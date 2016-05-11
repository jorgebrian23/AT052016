#Format (int, float, string)

int = get.chomp.to_i
float = get.chomp.to_f
string = get.chomp.to_s


#Classes
class ExampleOfClasse
	attr_reader :variable 
	@variable

end

#Methods

def ExampleOfMethod (valor1, valor2)
	valor3=valor1+valor2

end

#Variables, Getter/Setter

class ExampleOfVariable
	attr_reader :variable 
	attr_writer :variable
	@variable

end

#If condition

def ExampleOfIfCondition (valor1, valor2)
	if valor1>valor2
		valor3=valor1
	else
		valor3=valor2
	end

end
