puts 'IF ELSE END'
puts 'What\'s your name?'

name = gets.chomp

if name == 'Bob'
	# This is how we do comments
	puts 'BOB! WOOOO!'
else
	# COMMENTS!
	puts 'NOT BOB!'
end


puts 'WHILE END loop'

command = ''

while command != 'bye'
	if command != ''
		puts command
	end
	command = gets.chomp
end

puts 'Come again soon!'

bottles = 99
while bottles > 1
	puts bottles.to_s + ' bottles of beer, sitting on the wall etc.'
	bottles = bottles - 1
end
puts bottles.to_s + ' bottle of beer, sitting on the wall'

puts 'GRANDMA TIME!'
granvar = ''
granbye = 0
while granbye < 3
	granvar = gets.chomp
	if granvar == 'BYE'
		puts 'HRRM'
		granbye = granbye + 1
	elsif 
		granvar == granvar.upcase
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
		granbye = 0
	else
		puts 'HUH?!  SPEAK UP, SONNY!'
		granbye = 0
	end
end

puts 'LEAP YEAR PROGRAMME'
puts 'Start year'
startyear = gets.to_i
puts 'End year'
endyear = gets.to_i
if startyear < endyear
year = startyear
puts 'The leap years in that bounded time span are:'

while year <= endyear
	if year%4 == 0
		if year%100 != 0 or year%400 == 0
			puts year
		end
	end
	year = year + 1
end
else
	puts 'Your end year needs to come after your start year!'
end

