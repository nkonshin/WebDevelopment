# tui_for_solve.rb
load 'solve.rb'
puts 'Введите x:'
x = gets.to_f
puts "Результат вычисления (cos((#{x}^2)/((#{x}-2)*3*#{x}))) равен"
puts solve(x)
