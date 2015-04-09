#First, middle and last name
puts 'What\'s your first name?'
firstName = gets.chomp.to_s
puts 'What\'s your middle name?'
midName = gets.chomp.to_s
puts 'What\'s your last name?'
lastName = gets.chomp.to_s

puts 'Your full name is ' + firstName + ' ' + midName + ' ' + lastName
puts

#Favourite number
puts 'What\'s your favourite number?'
favourite = gets.to_i
puts 'Have you considered that ' + (favourite + 1).to_s + ' may be a better number?'
puts


#angry boss
puts 'Waddaya want?'
talkBack = gets.chomp.to_s
puts 'WHADDAYA MEAN "' + talkBack.upcase + '"?!? YOU\'RE FIRED!!'
puts

#Simple ToC
puts 'Table of Contents'.center(60)

TableOfContents = [['Chapter 1','Numbers',1],['Chapter 2','Letters',72],['Chapter 3','Variables',118]]

TableOfContents.each do |chNumber, chTitle, chPage|
	puts (chNumber + ':').ljust(20) + chTitle.ljust(20) + chPage.to_s.rjust(20) 
end

#Deaf grandma
puts 'Trip to grandma'
canWeGoYet = 0
while canWeGoYet < 3
	myLine = gets.chomp
	if myLine == 'BYE'
		canWeGoYet = canWeGoYet + 1
		puts 'EHHHHH?'
	elsif myLine == myLine.upcase
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
		canWeGoYet = 0
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		canWeGoYet = 0
	end
end
puts 'BYE THEN!'
puts

#Leap Years
puts 'Enter a starting year:'
startYear = gets.to_i
puts 'Enter an ending year:'
endYear = gets.to_i

if endYear <= startYear
	puts 'Your end year needs to be after your start year.'
else
	currentYear = startYear
	while currentYear <= endYear
		if (currentYear%4) == 0
			if ((currentYear%100) !=0) or ((currentYear%400) ==0)
				puts currentYear
			end
		end
		currentYear = currentYear + 1
	end
end

#List of words entry and alphabetical regurgitation

#input the list of words
wordList = []
nextWord = ''
puts 'Enter a list of words. Enter a blank to finish entry:'
nextWord = gets.chomp
while nextWord != ''
	wordList.push nextWord
	nextWord = gets.chomp
end

#sort the list of words
wordList = wordList.sort
wordList = wordList.reverse

#output the list of words
while wordList != []
	puts wordList.pop
end
puts

#Let's redo englishNumber


	#Tens and units array
	TensUnits = [[90,'ninety'],[80,'eighty'],[70,'seventy'],[60,'sixty'],[50,'fifty'],[40,'forty'],[30,'thirty'],
					[20,'twenty'],[19,'nineteen'],[18,'eighteen'],[17,'seventeen'],[16,'sixteen'],
					[15,'fifteen'],[14,'fourteen'],[13,'thirteen'],[12,'twelve'],[11,'eleven'],
					[10,'ten'],[9,'nine'],[8,'eight'],[7,'seven'],[6,'six'],[5,'five'],[4,'four'],
					[3,'three'],[2,'two'],[1,'one']]

def englishNumber number
	engWords = ''
	if number == 0
		return 'zero'
	end

	#array for billions, millions etc.
	billiMill = [[1000000000,'billion'],[1000000,'million'],[1000,'thousand'],[100,'hundred']]

	billiMill.each do |billiQuant, billiQual|
		if number >= billiQuant
			if engWords != ''
				engWords = engWords + ', '
			end
			engWords = engWords + englishNumber(number/billiQuant) + ' ' + billiQual
			number = number%billiQuant
		end
	end

	#separator between bmkh and tu
	if (engWords != '') and (number >0)
		engWords = engWords + ' and '
	end




	TensUnits.each do |tuniQuant, tuniQual|
		if number >= tuniQuant
			engWords = engWords + tuniQual
			number = number - tuniQuant
			if number != 0
				engWords = engWords + '-'
			end
		end
	end
engWords
end

puts 'Enter a natural number:'
myNumber = gets.to_i
if myNumber < 1
	puts 'Choose 1 or above next time!'
else
	while myNumber > 1
		puts (englishNumber myNumber) + ' bottles of beer, sitting on the wall. blah fall.'
		myNumber = myNumber - 1
	end
	puts 'one bottle of beer, sitting on the wall. blah fall'
end

class OrangeTree
	def initialize
		@treeHeight = 0
		@treeAge = 0
		@treeAlive = true
		@orangeCount = 0
		puts 'An orange tree appears!'
	end

	def height
		puts @treeHeight
	end

	def oneYearPasses
		@orangeCount = 0
		if @treeAlive == true
			@treeAge = @treeAge + 1
			if (@treeAge + rand(10)) > 29
				@treeAlive = false
				puts 'Oh no! The tree died of old age!'
			else
				@treeHeight = @treeHeight + 2 + rand(1)
				puts 'The tree grows as a year passes'
				if @treeAge > 5
					@orangeCount = 3 + rand(@treeAge)
					puts 'A new crop of oranges hang heavy from the tree'
				end
			end
		end
	end

	def pickAnOrange
		if @orangeCount >0
			@orangeCount = @orangeCount - 1
			puts 'Mmm. Tasty orange!'
		else
			puts 'But there are no oranges!'
		end
	end

	def isAlive
		if @treeAlive == true
			return true
		else
			return false
		end
	end

end

orange = OrangeTree.new
while orange.isAlive
	puts 'Choose: height, pick, or wait.'
	choice = gets.chomp.downcase
	if choice == 'height'
		orange.height
	elsif choice == 'pick'
		orange.pickAnOrange
	elsif choice = 'wait'
		orange.oneYearPasses
	else
		puts 'Not a valid choice.'
	end
end

#grandfather clock
puts 'GRANDFATHER'

def dingdong &grandad
	numBongs = Time.now.hour%12
	if numBongs == 0
		numBongs = 12
	end
	numBongs.times do
		&grandad.call
	end
end

dingdong.call do
	puts 'GAH'
end




