require_relative 'logic_lab6.rb'
puts 'Выберите фунуцию: sin - 1, tg - 2'
n = gets.to_i
proisv = Proisvodnaya.new(n)
proc_1 = lambda { |x,y,z| puts 'Полученные значения производных: ', x,y,z}


proisv.visov{|x,y,z| puts ' Полученные значения производных: ', x , y , z }
proisv.visov(proc_1)
