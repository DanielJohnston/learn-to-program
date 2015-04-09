var1 = 2
var2 = '5'
puts var1.to_s + var2
puts 'hello '.to_s + var2
puts var1 + var2.to_i
var1 = var1.to_s
puts var1 + var2
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts 'And now for some other Methods: gets and chomp'
puts gets
puts 'Hello, what\'s your name?'
name = gets 
puts 'Your name: ' + name + ' uh oh a carriage return?'
puts 'Let\'s try again with a chomp method'
name = gets.chomp
puts 'Your name: ' + name + ' ooh no carriage return'
puts 'sample program'
puts 'What is your first name?'
name = gets.chomp
puts 'What is your middle name?'
name = name + ' ' + gets.chomp
puts 'What is your last name?'
name = name + ' ' + gets.chomp
puts 'Your full name is ' + name