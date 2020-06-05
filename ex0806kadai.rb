require 'date'

#書籍ごとに配列をつくる
book1 = ["実践アジャイル　ソフトウェア開発法とプロジェクト管理","山田　正樹","やまだまさき","ソフトリサーチセンター",248,2500,2650,"48837320088","978-48837320088","21 x 14.8 x 2",Date.new(2005,1,25),Date.new(2005,2,2),]
book2 = ["入門LOGO MINDSTORMS NXT レゴブロックで作る動くロボット","大庭　慎一郎","おおばしんいちろう","ソフトバンククリエイティブ",164,2400,2520,"4797338253","978-4797338253","23 x 18.2 x 1.6",Date.new(2006,12,23),Date.new(2007,1,10),]

books = [book1,book2]

books.size.times{|i|
	puts "------------------"
	puts "書籍名：" + books[i][0]
	puts "著書名：" + books[i][1]
	puts "よみがな：" + books[i][2]
	puts "出版社：" + books[i][3]
	puts "ページ数：" + books[i][4].to_s + "ページ"
	puts "販売価格：" + books[i][5].to_s + "円"
	puts "購入費用：" + books[i][6].to_s + "円"
	puts "ISBN_10：" + books[i][7]
	puts "ISBN_13：" + books[i][8]
	puts "寸法：" + books[i][9]
	puts "発刊日" + books[i][10].to_s
	puts "購入日" + books[i][11].to_s
	
}

