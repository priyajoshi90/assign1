class Student
	@@stu_id=1 
      	@stu_id
      	@stu_name
      	@stu_age
	@stu_gender
	def initialize(name,age,gender)
		@stu_id=@@stu_id
		@stu_name=name
		@stu_age=age
		@stu_gender=gender
		@@stu_id+=1
	end
	
	def setid(value)
		@stu_id=value
	end
	
	def getid()
		@stu_id
	end
	
        def setname(value)
		@stu_name=value
	end
	
	def getname()
		@stu_name 
	end
	
        def setage(value)
		@stu_age=value
	end

	def getage()
		@stu_age
	end

        def setgender(value)
		@stu_gender=value
	end
		
	def getgender()
		 @stu_gender
	end
		
	def sortdata(arr)
		puts "enter choice for sorting"
		puts "press 1 to sort by name"
		puts "press 2 to sort by age"
		puts "press 3 to sort by gender"
		choice=gets
		if(choice.match("1"))
			arr.sort!{|p1,p2| p1.getname() <=> p2.getname()}
			arr.each do |i|
				puts "Student Id:" + i.getid.to_s + "Name:" + i.getname.capitalize + "Age:" + i.getage.capitalize  + "Gender:" + i.getgender.capitalize 
			end
		end
		
		if(choice.match("2"))
			arr.sort!{|p1,p2| p1.getage() <=> p2.getage()}
			arr.each do |i|
				puts "Student Id:" + i.getid.to_s + "Name:" + i.getname.capitalize + "Age:" + i.getage.capitalize  + "Gender:" + i.getgender.capitalize 
			end
		end
		
		if(choice.match("3"))
			arr.sort!{|p1,p2| p1.getgender() <=> p2.getgender()}
			arr.each do |i|
				puts "Student Id:" + i.getid.to_s + "Name:" + i.getname.capitalize + "Age:" + i.getage.capitalize  + "Gender:" + i.getgender.capitalize 
			end
		end
	end
end

array_list=Array.new
begin
    print "Do you wish to enter a record [Y/N]: "
    response = gets.chomp
    if response.to_s.upcase.eql?("Y")
	print "Enter your name, age and gender separated by comma: "
	data = gets.chomp.split(',')
	obj = Student.new(data[0], data[1], data[2])
	array_list.push(obj)
    elseif response.to_s.upcase.eql?("N")
	break
    else
	puts "Invalid response!"
	sleep 1
	system "clear" unless system "cls"
    end
end while !response.to_s.upcase.eql?("N")

obj = Student.new(nil, nil, nil)
obj.setid(nil)
obj.sortdata(array_list)



