puts 'LOOP TEST'

5.times do |counter|
	puts counter
end

puts 'SWAP TEST'
a = ['apple','banana']
puts a[0]
puts a[1]
a[0],a[1] = a[1],a[0]
puts a[0]
puts a[1]

names = ['Ada','Belle','Chris']

puts names
puts names[0]
puts names[2]
puts names[3]

#puts 'indefinite length list entry, sorting and regurgitation!'

#var = []

#while var.last != '' or var.length == 0
#	var.push gets.chomp
#end

#var = var.sort.reverse
#while var.length > 0
#	puts var.pop
#end

puts 'OPEN ENDED INPUT AND REGURGITATION WITHOUT SORT METHOD'

var = []
stoppit = false

while stoppit == false
	var.push gets.chomp
	#puts 'var.length = ' + var.length.to_s
	if var.last == ''
		var.pop
		stoppit = true
	elsif var.length > 1
		#obvious improvement - make this a while loop that stops when the latest input doesn't move or end is reached
		(var.length - 1).times do |counter|
			#puts 'counter = ' + counter.to_s
			#puts 'var[var.length - counter - 2] = ' + var[var.length - counter - 2].to_s
			#puts 'var[var.length - counter - 1] = ' + var[var.length - counter - 1].to_s
			if var[var.length - counter - 2] > var[var.length - counter - 1]
				#puts 'made it here'
				var[var.length - counter - 1],var[var.length - counter - 2] = var[var.length - counter - 2],var[var.length - counter - 1]
			end
		end
	end
end

#mildly embarrassing
var = var.reverse

while var.length > 0
	puts var.pop
end

#THIS IS MORE LIKE IT!

toc = []

toc[0] = ['Chapter 1: ', 'Numbers', 'page 1']
toc[1] = ['Chapter 2: ', 'Letters', 'page 72']
toc[2] = ['Chapter 3: ', 'Variables', 'page 118']

puts 'Table of Contents'.center(50)

toc.each do |chapter, title, pagenum|
	puts chapter.ljust(14) + title.ljust(25) + pagenum.rjust(11)
end
