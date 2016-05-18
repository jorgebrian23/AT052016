	def userName
		response=nil
		while response==nil do
			print "Username:"
			username=gets.chomp.to_s
			response=username=~/(?=.*[a-z])(?=.*[0-9])(?=.*[_])/
			puts "Need to be write with lowercase letter, number, an underscore" if response==nil 

		end 
	end
	def password
		response=nil
		while response==nil do
			print "Password: "
			username=gets.chomp.to_s
			response=username=~/(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,16}/
			puts "Need to be write with lowercase letter, number, letter and the length have to be between 8 and 16 characters" if response==nil 
		end 
			
		
	end
	def mail
		response=nil
		while response==nil do
			print "email: "
			username=gets.chomp.to_s
			response=username=~/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/
			puts "Need to have the format anything@domain.com " if response==nil

		end
	end
userName
password
mail
gets