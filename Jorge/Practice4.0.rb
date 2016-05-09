class Persona
	

	def getInfo

		print "Insert your user name: "
		@username=gets.chomp.to_s
		print "Insert your age: "
		@age = gets.chomp.to_i
		return @age

	end

	

end
class CalculateAge
	

	def AgeInMinutes age
		puts "Age in minutes: #{age*365*24*60}"
	end
end



age = Persona.new.getInfo
CalculateAge.new.AgeInMinutes(age)
