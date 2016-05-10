class Father
	@@money=100
	def self.money
		@@money
	end
end

class ChildOne < Father
	attr_reader :amount1
	def initialize
		@amount1=20
		@@money -= @amount1
	end
			
end

class ChildTwo < Father
	attr_reader :amount2
	
	def initialize
		@amount2=30
		@@money-=@amount2
	end

end

class ChildThree < Father
	attr_reader :amount3
	
	def initialize
		@amount3=40
		@@money-=@amount3
	end
end

puts "Initial father's amount = 100"
puts "ChildOne: #{ChildOne.new.amount1}"
puts "ChildTwo: #{ChildTwo.new.amount2}"
puts "ChildThree: #{ChildThree.new.amount3}"

puts "Final father's amount: #{Father.money}"




