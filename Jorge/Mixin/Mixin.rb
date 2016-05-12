#require Greets
require_relative "Greets1"
require_relative "Bye"
require_relative "Greets"

class Saludos

	include Greets
	include Bye


end

saludo = Saludos.new
	saludo.goodMorning
	saludo.goodAfternoom
	saludo.goodNigth

despedida = Saludos.new
despedida.adios
despedida.nosVemos
despedida.NosCheke
despedida.chau

puts "-- Library --"

Greets.goodMorning
Greets.goodAfternoom
Greets.goodNigth

Bye.adios

#Greets.
#Bye.adios
