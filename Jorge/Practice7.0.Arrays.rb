def returnArrays
	array = ["jorge",1,23]
	return array
end

def firstElementOfArray array
	puts array.first
	 

end

def lastElementOfArray array
	puts array.last
end

def commonElementBetweenBothArrays array,array2
	puts array&array2

end

array = ["jorge",1,23]

firstElementOfArray array
lastElementOfArray array

array2 = [1,2,23]
commonElementBetweenBothArrays array, array2
