class PracticeOfHash
	
	attr_accessor :h
	def initialize
	@h = Hash.new
	end

	def lengthOfTheHash
		print "Insert the length Of the Hash: "
		length=gets.chomp.to_i
		length.times do |index|
			print "Inserte el key: "
			key=gets.chomp
			print "Inserte el value: "
			value = gets.chomp
			h.store(key,value)

		end

	end
	def putskey hash
		print "Keys:"
		hash.each do |key,value|
    	p key
		end
	end
	def putsValues hash
		print "Values:"
		hash.each do |key,value|
    	p value
		end
	end
	def putsHash hash
		print "Hash:"
		p hash
	end
	def existKey hash
		puts "Insert a key value to find:"
		key=gets.chomp
		hash.has_key?(key)
		
	end
	def existValue hash
		puts "Insert a value to find:"
		value=gets.chomp
		hash.has_value?(value)
	end

end

hash = PracticeOfHash.new
hash.lengthOfTheHash
hash.putskey hash.h
hash.putsValues hash.h
hash.putsHash hash.h
if hash.existKey hash.h
	puts "the value exist"
end
if hash.existValue hash.h
	puts "the value exist"
end


