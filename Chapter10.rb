#CLOCK!
puts 'GRANDFATHER CLOCK'
def grandfather &chimes
	
	twelvehourtime = Time.now.hour%12
	puts 'time check: ' + twelvehourtime.to_s

	if twelvehourtime == 0
		twelvehourtime = 12
	end

	twelvehourtime.times do
		chimes.call
	end
end

grandfather do
	puts 'BONG'
end

#PROGRAM LOGGER
puts
puts 'PROGRAM LOGGER'
$nestingDepth = 0

def log blockDescription, &blockCode
	$nestingDepth = $nestingDepth + 10
	puts (' ' * $nestingDepth) + 'Beginning ' + blockDescription.to_s
	blockOutput = blockCode.call
	puts (' ' * $nestingDepth) + blockDescription.to_s + ' finished, returning: ' + blockOutput.to_s
	$nestingDepth = $nestingDepth - 10
end

log 'Outer block' do
	log 'Inner block' do
		5
	end
	'I like Thai Food!'
end
