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
		"#{@name}, #{@age}"
	end
end

#StudentBookアプリケーションのインスタンスを作る
class StudentBook
	def initialize
		@students = {}
	end

	#ハッシュにstudentクラスのインスタンスを複数作成する
	def setUpStudents
		$students = {
		:shin => Student.new("Shin Kuboaki", 45),
		:shinichirou => Student.new("Shinichirou Ooba",35),
		:shingo => Student.new("Shingo Katori",30)
	}
	end

	#全てのインスタンスの名前と年齢を表示する
	def printStudents
		$students.each{|key,value|
		puts "#{key} #{value.to_s}"
	}
	end

	#studentが保持しているデータをリストする
	def listAllStudents
		#インスタンスの作成
		setUpStudents
		#インスタンスの表示
		printStudents
	end
end

#StudentBookクラスのインスタンスを作成する
student_book = StudentBook.new

#studentクラスのインスタンスを表示
student_book.listAllStudents




