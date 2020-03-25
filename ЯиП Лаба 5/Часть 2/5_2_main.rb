# frozen_string_literal: true
# Во всех словах, начинающихся на букву «н», заменить эту букву буквой «т», 
#а во всех словах, оканчивающихся на букву «о», заменить эту букву буквой «е».
# 5_2_main.rb
# list of strings class
def correct(str)
  str.split.each do |wrd|
    (wrd[-1] = 'е' if wrd[-1] == 'о')
    (wrd[0] = 'т' if wrd[0] == 'н')
  end.join(' ')
end
