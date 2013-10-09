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

# Please Consider all type of datatypes for possible squaring as in ruby we can "f"*2 gives "ff"
# And don't limit it to integer consider floats as well and while inputing the element check for exceptions 
# if you convert 2.3.to_i it gives 2 which will not help in case of floats. 
# Display results in an array style [Element1,2,3..so on]
