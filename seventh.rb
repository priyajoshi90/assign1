

require 'D:\project\ruby_practice\mod.rb'

class Vehicle

@wheels
@color
@price
@brand
	def initialize(wheels,color,price)
	@wheels=wheels
	@color=color
	@price=price  
	end
	include Format
end

class Car<Vehicle
  Format.display
end

class Bus<Vehicle
	  Format.display
 end
class Bike<Vehicle

 end


