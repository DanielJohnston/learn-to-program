##Time exercises
birthdate = Time.mktime(1977, 8, 3)
puts 'My billion second birthday = ' + (birthdate + 1000000000).to_s

puts

##Get the year, month and day and turn into Ruby time
puts 'What year were you born in?'
yy = gets.to_i
puts 'What month were you born on?'
mm = gets.to_i
puts 'What day of the month were you born on?'
dd = gets.to_i
yourbirthdate = Time.mktime(yy, mm, dd)

puts 'You said: ' + yourbirthdate.to_s

#OK, there are three starting points to get number of birthdays since yourbirthdate
#One is to divide the difference between then and now by 365 and ignore leap years
#Two is to divide the difference, but adjust for leap years
#Three is to split the current date into day, month and year and compare individually
#I'm going with solution one for now, as two would take a bunch of time, and three is outside of curriculum

yourbirthdays = (Time.new - yourbirthdate).to_i / (365 * 24 * 60 * 60)
puts 'That means you\'ve had ' + yourbirthdays.to_s + ' birthdays!'
puts 'SPANK ' * yourbirthdays

puts
puts 'DIE TIME'

class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat spots
  	spots = spots.to_i
  	if spots < 1
  		spots = 1
  	elsif spots > 6
  		spots = 6
  	end
  	@numberShowing = spots
  end

end
  		
puts'Initialize the die'
die = Die.new
die.roll
puts 'Current number: ' + die.showing.to_s
puts 'Now let\'s cheat. What number do you want?'
die.cheat gets.chomp
puts 'Now the number is ' + die.showing.to_s

puts
puts 'ORANGE TREE'
puts

class OrangeTree

	def initialize
		@treeHeight = 0
		@treeAge = 0
		@treeOranges = 0
		@treeAlive = true
	end

	def oneYearPasses
		@treeOranges = 0
		puts 'A year passes.'
		if @treeAlive == true
			@treeAge = @treeAge + 1
			if (@treeAge + rand(10)) > 30
				@treeAlive = false
				puts 'The tree just died of old age!'
			else
				@treeHeight = ( @treeHeight + 3 + rand(3) )
				if @treeAge > 4
					@treeOranges = 5 + rand(@treeAge / 2)
				end
			end
		else
			puts 'The tree slowly moulders away. Not much else happens.'
		end
	end

	def height
		@treeHeight
	end

	def countTheOranges
		@treeOranges
	end

	def pickAnOrange
		if @treeOranges > 0
			@treeOranges = @treeOranges - 1
			puts 'That was a lovely orange.'
		else
			puts 'There are no oranges to pick.'
		end
	end

end

orange = OrangeTree.new

30.times do
	puts 'This year: ' + orange.height.to_s + ' height, ' + orange.countTheOranges.to_s + ' oranges.'
	orange.pickAnOrange
	puts 'That leaves ' + orange.countTheOranges.to_s + ' oranges.'
	orange.oneYearPasses
end







