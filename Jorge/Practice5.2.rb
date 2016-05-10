def customer name, customer_id
	
	result= (customer_id>100)? ("Thanks to be our customer") :("Thanks")
	puts "Hi #{name.upcase}"
	puts "You are our customer #{customer_id} #{result}"

end

customer("jorge",1)
customer "Brian",200