seconds = 6200
minutes = seconds.to_f/60
hours = minutes.to_f/60

puts "6200 seconds are #{minutes.round(2)} minutes or #{hours.round(2)} hours"