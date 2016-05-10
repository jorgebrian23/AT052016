def celciusToFahrenheit(celcius)
	fahrenheit=(((9*celcius.to_f)/5)+32).round(2)
end

def fahrenheitToCelcius fahrenheit
	celcius=((5*(fahrenheit.to_f-32))/9).round(2)
	return celcius
end

puts celciusToFahrenheit 23
puts fahrenheitToCelcius 110