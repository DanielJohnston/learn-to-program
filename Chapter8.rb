#Hoo boy now it's getting interesting
#I'm going to try and rewrite the englishnumber program in a potentially cleaner way
#Basis is that there's a hierarchy of replacement from big numbers to small numbers
#And that numbering repeats hundred, thousand, million, billion so can use recursion
#Thus with xyyy, the first part of the answer will be 'digit thousand, ', arguably with recursion for extra fun
#With xyy, the first part of this phase will be 'digit hundred' plus ' and ' if we've got xy or x to deal with
#With xy, when x>=2 put blahty plus '-' if we've got non-zero x to deal with
#With xy, when x=1 put blahteen and done
#With x, put blah and done
#OK. Let's try this

def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  #OK, this has to recurse for billions, millions, thousands and hundreds
  #Separators have to be added at point of next element being added


  #check for billions
  if number / 1000000000 >= 1
  	numString = (englishNumber (number / 1000000000)) + ' billion'
  	number = number % 1000000000
  end

  #check for millions
  if number / 1000000 >= 1
  	if numString != ''
  		numString = numString + ', '
  	end
  	numString = numString + (englishNumber (number / 1000000)) + ' million'
  	number = number % 1000000
  end

  #check for thousands
  if number / 1000 >= 1
  	if numString != ''
  		numString = numString + ', '
  	end
  	numString = numString + (englishNumber (number / 1000)) + ' thousand'
  	number = number % 1000
  end

  #check for hundreds
  if number / 100 >= 1
  	if numString != ''
  		numString = numString + ', '
  	end
  	#puts 'numString: ' + numString
  	#puts 'englishNumber: ' + englishNumber(number / 100)
  	numString = numString + (englishNumber (number / 100)) + ' hundred'
  	number = number % 100
  end

  #check for tens and units
  if (numString != '') and (number > 0)
  	numString = numString + ' and '
  end

  tensUnits = [[90, 'ninety'],[80,'eighty'],[70,'seventy'],[60,'sixty'],[50,'fifty'],[40,'forty'],
				[30,'thirty'],[20,'twenty'],[19,'nineteen'],[18,'eighteen'],[17,'seventeen'],
				[16,'sixteen'],[15,'fifteen'],[14,'fourteen'],[13,'thirteen'],[12,'twelve'],
				[11,'eleven'],[10,'ten'],[9,'nine'],[8,'eight'],[7,'seven'],[6,'six'],
				[5,'five'],[4,'four'],[3,'three'],[2,'two'],[1,'one']]

	tensUnits.each do |tuNumber,tuWord|
		#puts 'tensunit loop. number = ' + number.to_s + '  tuNumber = ' + tuNumber.to_s + '  tuWord = ' + tuWord
		if number - tuNumber >= 0
			numString = numString + tuWord
			number = number - tuNumber
			if number > 0
				numString = numString + '-'
			end
		end
	end



numString
end

aNumber = 0

while aNumber != -1
	puts 'Enter a number (-1 to exit):'
	aNumber = gets.to_i
	puts englishNumber(aNumber)
end