class PracticeOfArrays


	def return3arrays
		arrayOnlyNumber =Array.new
		#= ["a","b","c","d","e"]
		#= [1,2,3,4,5,6,7,8]

		arrayOnlyAlphebetical = Array.new
		#= ["a","b","c","d","e"]
		arrayMixed = ["a","b","c","d","e",1,2,3,4,5]

		arrayMixed.length.times do |index|
			valor=arrayMixed[index]
			if(valor.to_i.to_s==valor.to_s)
				arrayOnlyNumber.push(valor)
			else
				arrayOnlyAlphebetical.push(valor)
			end
			
		end 
		p arrayMixed
		p arrayOnlyNumber
		p arrayOnlyAlphebetical

		return arrayOnlyNumber, arrayOnlyAlphebetical, arrayMixed

	end 


	def method2 array1, array2
		puts "Valores en comun del array1 y el array2 : #{array1 & array2}"
		puts "primer elemento del array1: #{array1.first} y del array2: #{array2.first}"
		puts "ultimo elemento del array1: #{array1.last} y del array2: #{array2.last}"


	end

	def method3 array1, array2
		array3=Array.new
		array3.push(array1.pop)
		array3.push(array2.shift)
		puts "Union de dos arrays #{array1+array2}"

		array3

	end

	def method4 array1
		puts "El array del metodo 3: #{array1}"
	end

end
a = PracticeOfArrays.new
array1, array2, array3=a.return3arrays
a.method2(array1,array3)
a.method4(a.method3(array1,array2)) 