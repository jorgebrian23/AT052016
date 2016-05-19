file_example = File.open('execution.log', 'w+')
file_example.truncate(0)
#file_example.write('line1')


module MinutestoHours 

	def minutestoHours minutes
	 	minutes/60
	end
end

module HoursToDay 

	def hoursToDay hours 
		hours/24
	end
end

module DaysToMonth 

	def dayToMonth days 
		days/30
	end
end
require 'singleton'
class User
	include Singleton
	include MinutestoHours 
	include HoursToDay 
	include DaysToMonth 
	attr_accessor :hash
	def initialize
			@hash={}
	end
	
	def userAndID (userName=nil,id=nil)		
		 begin
			response=userName=~/(?=.*^[a-z0-9]*$)(?=.*{11}$)/
			if response==nil
				puts "Need to be write with lowercase letter and or number, no more than 11 character" 
				print "Try again the username:"
				file_example.write("\nNeed to be write with lowercase letter and or number, no more than 11 character")
				file_example.write("\nTry again the username:")
				userName=gets.chomp.to_s 
				file_example.write("\n#{userName}")
			end

		end while response==nil
		@hash.store(userName,id)

	end

	def amountUser amount
		amount.times do |index|
			print "Insert the Username #{index+1}: "
			#file_example.write("\nInsert the Username #{index+1}: ")
			user=gets.chomp.to_s
			#file_example.write("\nuser: #{user}")
			print "Insert the ID #{index+1}: "
			#file_example.write("\nInsert the ID #{index+1}: ")
			id=gets.chomp.to_s
			#file_example.write("\nid: #{id}")
			userAndID user,id
		end

		amount.times do 
			askTypeOfConversion
		end
	end

	def askTypeOfConversion 
		puts "a) From minutes to hours"
		puts "b) From hours to days"
		puts "c) From days to month"
		print "Insert the option: "

		typeOfConversion gets.chomp.to_s
	end

	def typeOfConversion selected

		options=["minutes","hours","days","month"]
		case 
		when selected=="a" then option=0
		when selected=="b" then option=1
		when selected=="c" then option=2	
		end

		if selected=="a"
			print "Insert the value in #{options[option]}: "
			value=gets.chomp.to_i
			puts "#{value} #{options[option]} represent #{minutestoHours value} #{options[option+1]}"
			#file_example.write("#{value} #{options[option]} represent #{minutestoHours value} #{options[option+1]}")
		end

		if selected=="b"
			print "Insert the value in #{options[option]}: "
			value=gets.chomp.to_i
			puts "#{value} #{options[option]} represent #{hoursToDay value} #{options[option+1]}"
			#file_example.write("#{value} #{options[option]} represent #{minutestoHours value} #{options[option+1]}")
		end
		if selected=="c"
			print "Insert the value in #{options[option]}: "
			value=gets.chomp.to_i
			puts "#{value} #{options[option]} represent #{dayToMonth value} #{options[option+1]}"
			#file_example.write("#{value} #{options[option]} represent #{minutestoHours value} #{options[option+1]}")
		end
	end

end

user = User.instance
print "Ingress amount users: "
nUsers=gets.chomp.to_i
file_example.write("\nCantidad de usuarios: #{nUsers}")
user.amountUser nUsers
file_example.close


