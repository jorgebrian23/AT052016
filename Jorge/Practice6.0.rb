def passanger passanger_name, price, destination_city="CBB"
	#attr_reader :price
	#if destination_city==nulo
		#@destination_city="CBB"
	#end
	
	#@passanger_name=passanger_name
	
	#@destination_city=destination_city
	price/6.96
	

#si es diferente a nulo
end

print "Inserte el nombre del pasajero: "
pasajero=gets.chomp.to_s
print "Desea ingresar el destino s/n : "
decidirDestino=gets.chomp.to_s
if(decidirDestino=="s")
	print "Ingrese el destino: "
	destino=gets.chomp.to_s

end

print "Ingrese el Precio en Bs: "
precio = gets.chomp.to_f

if decidirDestino=="s"
priceEnDolares =passanger pasajero, destino, precio
else
	priceEnDolares=passanger pasajero, precio
end

puts "El precio en dolares es: #{priceEnDolares.round(2)}"