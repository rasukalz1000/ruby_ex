#-*- coding:utf-8 -*-
str = "Twinkle, twincle, little star,
How I wonder what you are.
Up above the world so high,
Like a diamond in the sky.
Twinkle, twincle, little star,
How I wonder what you are."

#上の歌詞を行ごとに分割
lines = str.split(/\n/)

#"you"にマッチする行を表示する
puts "youが含まれていた行"
lines.each{|line|
if line =~ /[Yy]ou/ then
	puts line
end
}

puts ""

#行末に","がきている行を表示する
puts "行末にカンマが含まれていた行"
lines.each{|line|
if line =~ /,$/ then
	puts line
end
}

puts ""
#"i"がきて２文字おいて"i"がくる文字列が含まれる
puts '"i"がきて2文字おいて"l"がくる文字列が含まれる行'
lines.each{|line|
if line =~ /i..l/ then
	puts line
end

}