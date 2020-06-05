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

#studentクラスのインスタンスを作成する
shin = Student.new('久保秋　真',45)
hiroshi = Student.new('久保秋　博',41)

#インスタンスの名前と年齢を表示する
puts shin.to_s
puts hiroshi.to_s