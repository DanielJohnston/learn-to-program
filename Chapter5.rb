puts 'Ten methods from previous chapters'
gets.chomp
puts '5'.to_i + 1 - 2 * 3 / 2
puts '5'.to_f
puts 13.5.to_s
puts 'String methods'
puts 'bleargh'.reverse
puts 'bleargh is ' + 'bleargh'.length.to_s + ' characters long'
puts 'bleargh'.upcase
puts 'bleargh'.downcase
puts 'Bleargh'.swapcase
puts 'bleargh'.capitalize
puts 'just the first letter'.capitalize
linewidth = 50
puts 'Centred text'.center(linewidth)
puts 'left justified'.ljust linewidth
puts 'right justified'.rjust linewidth
puts 'left justified'.ljust(linewidth/2)+'right justified'.rjust(linewidth/2)
puts 'ANGRY BOSS'
puts 'What do you want, eh?'
bossvar = gets.chomp.upcase
puts 'WHADDAYA MEAN "' + bossvar + '"?!?  YOU\'RE FIRED!!'
puts 'TABLE OF CONTENTS'
puts 'Table of Contents'.center(50)
puts 'Chapter 1: '.ljust(14) + 'Numbers'.ljust(25) + 'page 1'.rjust(11)
puts 'Chapter 2: '.ljust(14) + 'Letters'.ljust(25) + 'page 72'.rjust(11)
puts 'Chapter 3: '.ljust(14) + 'Variables'.ljust(25) + 'page 118'.rjust(11)
puts 'Maths methods'
puts '5 to the power of 2 = ' + (5**2).to_s
puts '7 / 3 = ' + (7/3).to_s + ' with a remainder of ' + (7%3).to_s
puts 'The absolute value of -3 is ' + (-3.abs).to_s
puts 'Random number without forced typing = ' + rand.to_s
puts 'Random number with integer bound = ' + rand(100).to_s
puts 'Random number with 1 integer bound = ' + rand(1).to_s + ' Yeah IT\'S ALWAYS ZERO'
puts 'But getting a % from 0 to 100 requires a 101 bound: ' + rand(101).to_s + '%'
puts 'We can also seed the generator with srand(seed)'
puts 'There are also Math() objects, basically a way of accessing full mathematical notation in Ruby'
