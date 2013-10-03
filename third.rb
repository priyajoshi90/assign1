class Third
	def third
		puts "Enter your name"
		str = gets
		str2=String.new
		i=0
		begin
			str1=str.slice(i,2)
			i=i+2
			str2<<str1.capitalize
		end while i < str.size
		puts str2
	end

	obj=Third.new
	obj.third()
end