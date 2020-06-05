#-*- coding: utf-8 -*-
require 'date'

class BookInfo
	#BookInfoクラスのインスタンスを初期化する
	def initialize(title, author, page, publish_date)
		@title = title
		@author = author
		@page = page
		@publish_date = publish_date
	end

	#最初に検討する属性に対するアクセサを提供する
	attr_accessor :title, :author, :page, :publish_date

	#BookInfoクラスのインスタンスの文字列表現を返す
	def to_s
		"#{@title}, #{@author}, #{@page}, #{@publish_date}"
	end

	#蔵書データに書式を付けて出力する操作を追加する
	#項目の区切り文字を引数に指定することができる
	#引数を省略した場合は改行を区切り文字にする
	def toFormattedString(sep = "\n")
		"書籍名：#{@title}#{sep}著者名：#{@author}#{sep}ページ数：#{@page}ページ#{sep}発刊日：#{@publish_date}#{sep}"
	end
end

#BookInfoManagerクラスを定義する
class BookInfoManager
	def initialize
		@book_infos = {}
	end

	#蔵書データをセットアップする
	def setUp
		#複数冊の蔵書を登録する
		@book_infos["Yamada2005"] = BookInfo.new(
			"実践アジャイル ソフトウェア開発法とプロジェクト管理",
			"山田 正樹",
			248,
			Date.new(2005,1,25)
			)
		@book_infos["Ooba2006"] = BookInfo.new(
			"入門LEGO MINDSTONES NXT レゴブロックで作る動くロボット",
			"大庭 慎一郎",
			164,
			Date.new(2006,12,23)
			)
	end

	#蔵書データを登録する
	def addBookInfo
		#蔵書データ１件分のインスタンスを作成する
		book_info = BookInfo.new("","",0,Date.new)
		#登録するデータを項目ごとに入力する
		print "\n"
		print "キー："
		key = gets.chomp
		print "書籍名："
		book_info.title = gets.chomp
		print "著者名："
		book_info.author = gets.chomp
		print "ページ数："
		book_info.page = gets.chomp.to_i
		print "発刊年："
		year = gets.chomp.to_i
		print "発刊月："
		month = gets.chomp.to_i
		print "発刊日："
		day = gets.chomp.to_i
		book_info.publish_date = Date.new(year,month,day)

		#作成した蔵書データの１件分をハッシュに登録する
		@book_infos[key] = book_info
	end

	#蔵書データの一覧を表示する
	def listAllBookInfos
		puts "\n-------------------"
		@book_infos.each{|key,info|
			print info.toFormattedString
		puts "\n-------------------"
		}
	end

	#蔵書を検索する
	def searchBook
		#蔵書データ１件分のインスタンスを作成する
		book_info = BookInfo.new("","",0,nil)
		#登録するデータを項目ごとに入力する
		print "\n"
		print "書籍名："
		book_info.title = gets.chomp
		print "著者名："
		book_info.author = gets.chomp
		print "ページ数："
		book_info.page = gets.chomp.to_i
		print "発刊年："
		year = gets.chomp.to_i
		print "発刊月："
		month = gets.chomp.to_i
		print "発刊日："
		day = gets.chomp.to_i
		if year > 0 && month > 0 && day > 0
			book_info.publish_date = Date.new(year,month,day)
		end

		#変数に検索データを入れる
		search = book_info

		#該当する蔵書データを格納するハッシュを作る
		target_book = {}

		#蔵書データを１件づづ取り出して検索データと比較する
		@book_infos.each{|key,info|
			#検索条件と一致しているか
			target_flag = 1
			#検索条件が未入力か
			input_check = 0

			if search.title != ""
				target_flag = 0 if search.title =~ /[^"#{info.title}"]/
			else
				input_check += 1
			end
			if search.author != ""
				target_flag = 0 if search.author != info.author
			else
				input_check += 1
			end
			if search.page != 0
				target_flag = 0 if search.page != info.page
			else
				input_check += 1
			end
			if search.publish_date != nil
				target_flag = 0 if search.publish_date != info.publish_date
			else
				input_check += 1
			end

		#比較が全て一致した蔵書データをハッシュに格納する
		#検索条件が全て未入力の場合は格納しない
		target_book[key] = info if target_flag == 1 && input_check < 4
		
		}

		puts "\n-------------------"
		if target_book.length > 0

			#比較した全て一致した蔵書データを表示する
			target_book.each{|key, info|
				print info.toFormattedString
				puts "\n-------------------"
		}else
		print "条件に一致する蔵書はありません"
		puts "\n-------------------"
		end


	end


	#処理の選択と選択後の処理を繰り返す

	def run
		while true
			#機能選択画面を表示する
			print "
1.　蔵書データの登録
2.　蔵書データの表示
3.　蔵書データの検索
9.　終了
番号を選んでください(1,2,3,9)："

			#文字の入力を待つ
			num = gets.chomp
			case 
			when '1' == num
				#蔵書データの登録
				addBookInfo
			when '2' == num
				#蔵書データの表示
				listAllBookInfos
			when '3' == num
				#検索結果一覧
				searchBook
			when '9' == num
				#アプリケーションの終了
				break;
			else
				#処理選択待ち画面に戻る
			end
		end
	end
end	

#アプリケーションのインスタンスを作る
book_info_manager = BookInfoManager.new

#BookInfoManagerの蔵書データをセットアップする
book_info_manager.setUp

#BookInfoManagerの処理の選択と選択後の処理を繰り返す
book_info_manager.run