#-*- coding: utf-8 -*-
#studentクラスを作る
class Student

#studentクラスのインスタンスを初期化する
	def initialize(name, age)
		@name = name
		@age = age
	end

	#studentクラスのインスタンスの文字列表現を返す
	def to_s
		"#@name, #@age"
	end
end

#新しいハッシュを作成し、Studentクラスのインスタンスを複数作成する
students = {
	:shin => Student.new("Shin Kuboaki", 45),
	:shinichirou => Student.new("Shinichirou Ooba",35),
	:shingo => Student.new("Shingo Katori",30)
}
#全てのインスタンスの名前と年齢を表示する
students.each{|key,value|
	puts "#{key} #{value.to_s}"

}


#------------------------
#処理に名前をつける場合
#ハッシュはプログラム中どこでも使えるように"$"をつけてグローバル変数化する

# def setUpStudents
# 	$students = {
# 	:shin => Student.new("Shin Kuboaki", 45),
# 	:shinichirou => Student.new("Shinichirou Ooba",35),
# 	:shingo => Student.new("Shingo Katori",30)
# }
# end

# def printStudents
# 	$students.each{|key,value|
# 	puts "#{key} #{value.to_s}"
# }
# end

#インスタンスの作成
# setUpStudents
#インスタンスの表示
# printStudents