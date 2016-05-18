class Usuarios
	attr_reader :hash

	def initialize
		@hash={}
	end

	def createHash
		print "insert amount users: "
		quantity=gets.chomp.to_i
	
		quantity.times do |index|
			print "Insert the ID #{index+1}: "
			id=gets.chomp.to_i
			while id<1 || id>100 do
				puts "Only numbers between 1 to 100"
				print "Insert the ID #{index+1}: "
				id=gets.chomp.to_i
			end
			response=nil
			while response==nil do
				print "Insert the username #{index+1}: "
				username=gets.chomp.to_s
				response=username=~/^[a-z]{1,8}$/
				puts "Username should be only lowercase,nor more than 8 digits" if response == nil
			end
			@hash.store(id,username)
		end
	end

	def returnIdByNumber number
		@hash.select { |(key,value)| key.to_s=~/#{number}/  }
	end

	def returnUserNameByCharacter character
		
		@hash.select { |key,value| value.to_s=~/#{character}/ }
	end


	def displayAMessage  id
		case id
		when (1..25) then print " belong Group 1"
		when (26..50) then print " belong Group 2"
		when (51..75) then print " belong Group 3"
		when (76..100) then print " belong Group 4"			
		end
	end

	def printArray array
		print array
		puts ""
	end
end

user=Usuarios.new
user.createHash

puts "Insert a number to find de Ids:"
number=gets.chomp.to_s
puts "The array of IDs is:"
user.printArray user.returnIdByNumber number

puts "Insert a character to find de UserNames:"
username=gets.chomp.to_s
puts "The array of UserNames is:"
user.printArray user.returnUserNameByCharacter username

user.hash.each{|key,value|
	print value
	user.displayAMessage key
	puts ""
}

gets