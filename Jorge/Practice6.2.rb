def SecondToHoursAndMinutes seconds
	minutes = seconds.to_f/60
	hours = minutes.to_f/60
	return minutes, hours
end

print "Enter the seconds: "
seconds = gets.chomp.to_i

minutes,hours = SecondToHoursAndMinutes seconds
puts "#{seconds} seconds are #{minutes.round(2)} minutes or #{hours.round(2)} hours"