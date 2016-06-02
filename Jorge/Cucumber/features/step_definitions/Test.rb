Given(/^a username= (\w+)$/) do |user|
  #pending # Write code here that turns the phrase above into concrete actions
  @user=user
end

Given(/^a password= (\w+)$/) do |pass|
  #pending # Write code here that turns the phrase above into concrete actions
  #$user.each do |username,password|
		
#	end

	#@find = $user.select{|username,password| username==@user and password==pass}
	#p @find
	#p @find[pass]
	#p $user[@user]
	#puts pass.to_s
	#p @find[@user]
	#p=$user[@user]

	#puts p
	#puts pass
	#if p.to_s.eql? (pass.to_s) 
	#	p @message[@user]
	#end


end

Then(/^the result expect (\w+)$/) do |message|
  
	
	#if(@find !=nil )
		#@p=$message[@user]
	#else
	#
	#	p="NotFound"
	#end

	#if(p==nil)
	#	p="NotFound"
	#expect(p).to eq(message.to_s)
	p=$message[@user]
	if p==nil
		p="NotFound"
	end
	expect(p).to eq(message.to_s)
	puts p
  
  #pending # Write code here that turns the phrase above into concrete actions
end

