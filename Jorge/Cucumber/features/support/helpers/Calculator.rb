module Calculator
	def Calculator.add(lis_of_numbers)
   		#add code to sum each number in the list
   		sum=0
   		lis_of_numbers.each do |index|
   			index.each do |valor|
   				sum=sum+ valor.to_i
   			end
   			
   		end
   		return sum

	end
	def Calculator.substract(lis_of_numbers)
   		# add code to subtract each number
	end
end
