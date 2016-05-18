class Person
	
	
	attr_accessor :hash
	def initialize amount
		@amount = amount.to_i
		@hash = Hash.new 
	end
	def NameAndID
		
		@amount.times do |index|
			print "Insert the name: "
			key=gets.chomp
			print "Insert the ID: "
			value = gets.chomp
			hash.store(key,value)
		end

	end

	def upperCase

		array=[]
		@hash.each_with_index do |(key,value),index|
			
			puts "position : #{index+1} value: #{key.upcase}"
			array.push(key)
		end
		
	end 

	def goodbye
		@hash.each do |key,value|
    	puts "Good bye #{key}"
		end
	end


end

print "Insert the amount: "
amount=gets.chomp.to_i
person = Person.new amount

person.NameAndID
person.upperCase
person.goodbye


gets