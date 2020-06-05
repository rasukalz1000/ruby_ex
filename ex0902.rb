#-*- coding: utf-8 -*-
#studentクラスを作る
class Student

#studentクラスのインスタンスを初期化する
	def initialize(name, age)
		@name = name
		@age = age
	end
	#name属性のゲッターメソッド
	def name
		@name
	end

	#age属性のゲッターメソッド
	def age
		@age
	end

	#studentクラスのインスタンスの文字列表現を返す
	def to_s
		"#@name, #@age"
	end
end

#studentクラスのインスタンスを作成する
shin = Student.new('久保秋　真',45)
hiroshi = Student.new('久保秋　博',41)

#インスタンスの名前と年齢を表示する
puts shin.to_s
puts hiroshi.to_s

#ゲッターを使ってインスタンスの名前と年齢を表示する
puts "氏名：#{shin.name}、年齢：#{shin.age}歳"
puts "氏名：#{hiroshi.name}、年齢：#{hiroshi.age}歳"