def fact n
	if n==0
		return 1
	else
		return (n*fact(n-1))
	end
end

puts fact(ARGV[0].to_i)

# Try to handle exceptions as well with proper messages 
# and make it more interactive if you need any clarity reach out to me :)

# def fact n
# 	raise ArgumentError, "Don't Enter String" if n.class == "String".class
# 	raise ArgumentError ,"Enter a Valid Number Boss" if n < 0
# 	if n==0
# 		return 1
# 	else
# 		return (n*fact(n-1)) 
# 	end
# end
