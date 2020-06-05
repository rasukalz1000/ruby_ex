# -*= coding: utf-8 -*-
fruits_prices = [["apple",200],["orange",100],["melon",600]]

fruits_prices.each{|fp|
	puts "名前：#{fp[0]}、値段：#{fp[1]}"
}

sum = 0 
fruits_prices.each{|fp| sum += fp[1]}
puts "１個づつ買うと全部で#{sum}円です。"