class Persona
	attr_accessor :name,:age
	def initialize name,age
		@name=name
		@age=age
	end
	def yearsInHours

		@age<35? result=@age*365*24 : result="Age can not be calculated"
		result
	end
	def result 
		case @age
		when 0..5 then puts "#{name} you are a baby"
		when 6..12 then puts "#{name} you are a child"
		when 13..21 then puts "#{name} you are a young people"
		when 22..35 then puts "#{name} you are adult"
				else puts yearsInHours
		end
				
	end
end

print "Insert your name:"
name=gets.chomp.to_s
print "Insert your age:"
age=gets.chomp.to_i
control=Persona.new name,age
result = control.yearsInHours
puts "The years in hours is #{result}"
control.result

gets