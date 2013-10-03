class Accept
    
    @one
    @two

    def getone()
		@one
    end
    def setone(value)
		@one = value
    end
    
    def gettwo()
		@two
    end
    
    def settwo(value)
		@two = value
    end    
    
    def process()
		one = self.getone()
		two = self.gettwo()

		begin
			if one.to_i != 0 && two.to_i != 0
				puts "#{one.to_i + two.to_i}"
			elsif one.to_i == 0 && two.to_i == 0
				puts "#{one + two}"
			else
				raise Exception, "Both values should be either strings or numeric!"
			end
		rescue Exception => e
			puts "#{e.message}"
			puts e.backtrace
		ensure
		end

    end    
end

print "Enter one: "
one = gets.chomp
puts ""
print "Enter two: "
two = gets.chomp
puts ""

obj = Accept.new
obj.setone(one)
obj.settwo(two)
puts "#{obj.process()}"