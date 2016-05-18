require 'singleton'
class Amazon
	include Singleton
	attr_reader :itemPrice,:itemQuantity, :itemToBuy
	def initialize 
		@itemToBuy={}
		@itemPrice={"iphone 6s"=>680,
			"Iphone 6"=>530,
			"Iphone 5s"=>310,
			"Iphone 5"=>230,
			"Samsung s6"=>510,
			"Samsung s6 edge"=>690}
		@itemQuantity={"iphone 6s"=>6,
			"Iphone 6"=>10,
			"Iphone 5s"=>16,
			"Iphone 5"=>8,
			"Samsung s6"=>21,
			"Samsung s6 edge"=>7}
	end
	def buyItem item
		#p @hash 
		#print "What item do you want? "
		#item=gets.chomp.to_s
		puts "How many?"
		amount=gets.chomp.to_i
		@itemQuantity.each{|key,value|
			@itemQuantity.store(key,value-=amount) if key==item
		}
		if @itemToBuy.has_key?(item)then
			@itemToBuy.each{|key,value|
			 @itemToBuy.store(key,value+=amount) if key==item
		}
		else
			@itemToBuy.store(item,amount)
		end
	end
	def calculatePrice item,amount
		result=0
		@itemPrice.each{|key,value|
			 result=value*amount if item==key 
		}
		result
	end
end



store=Amazon.instance
puts store.itemPrice
print "what product do you like to buy?"
producto = gets.chomp.to_s
store.buyItem producto

puts "Item    Precio"
store.itemToBuy.each {|key,value|
	print "#{key}   " 
	puts store.calculatePrice key,value
}

p store.itemQuantity

gets
=begin
	
if, because we work on the same products, 
and in this case only the amount amending
=end