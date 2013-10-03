def second()
	puts "Please enter the array elements"
	puts "Enter N to exit"
	array = []
	while line = gets
 		 break if line.chomp =~ /N/ #exit when 'N' is entered	
		 puts "Entered: #{line.chomp}"
  		 array << line.chomp
	end
	puts "Finished with result: #{array.join('-')}" #joining all the elements with a hyphen
	puts "The resulting array is:"
	for i in 0...array.size
		puts((array.at(i).to_i)*(array.at(i).to_i))
	end
end 

second()