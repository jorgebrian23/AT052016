=begin
module Login
	@user ={"jorge" => 123, "brian" => 123}

	
	def Login.user user pass
		result=0
		user.each do |us,pas|
			if(us==user and pas==pass)
				result=1;
		end
		return result
		
	end
end
=end

$user ={"jorge" => "123", "brian" => "123"}
$message = {"jorge" => "Welcome", "brian" => "Welcome" }

#$User=[["jorge","123","Welcome"],["brian","123","Welcome"],["forero","123","NotFound"]]