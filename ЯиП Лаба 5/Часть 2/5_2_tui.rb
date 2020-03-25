# frozen_string_literal: true

# 5_2_tui.rb
load '5_2_main.rb'
puts 'Input number of lines.'
num = gets.to_i
if num < 1
  puts 'Error. Programm need a number > 0.'
  exit
end

puts 'Input the encrypted string:'
mas = []
num.times { mas << gets }

mas.each do |str|
  puts 'First: ' + str
  puts 'Correct: ' + correct(str)
  puts
end
