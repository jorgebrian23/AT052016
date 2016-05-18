require 'singleton'
class ApplyingSingleton
	include Singleton
	attr_accessor :user
	def initialize
		@user= "Guest"
		@message = "Welcome to the city"
		@visitors = 0
		@hash = {}
	end

	def addAUser user, message
		@user=user
		@message=message
		@visitors+=1
		@hash.store(user,message)


	end
end

user = ApplyingSingleton.instance
user.addAUser("jorge","Welcome to the jungle")
user1 = ApplyingSingleton.instance
puts "The last user #{user1.user}"

=begin
	

	
=end
gets