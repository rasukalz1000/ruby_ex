#-*- coding: utf-8 -*-
#studentクラスを作る
class Student

#studentクラスのインスタンスを初期化する
	def initialize(name, age)
		@name = name
		@age = age
	end
	
	attr_accessor :name, :age

	#studentクラスのインスタンスの文字列表現を返す
	def to_s
		"#@name, #@age"
	end
end

#studentクラスのインスタンスを作成する
shin = Student.new('久保秋　真',45)

#ゲッターを使ってインスタンスの名前と年齢を表示する
puts "氏名：#{shin.name}、年齢：#{shin.age}歳"

#セッターを使ってshinの名前と年齢を変更する
shin.name = 'Singh, Tiger Jeet'
shin.age = 445

#インスタンスの名前と年齢を表示する
puts shin.name
puts shin.age

puts "氏名：#{shin.name}、年齢：#{shin.age}歳"