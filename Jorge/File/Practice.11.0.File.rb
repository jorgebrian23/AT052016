
def createFile
	print "Ingress the name of file and the extension E.g test.txt:  "
	name=gets.chomp.to_s
	file_example=File.open("#{name}",'w+')
	file_example.truncate(0)

	print "Insert de amount of lines to be added"
	lines=gets.chomp.to_i

	lines.times do 
		sentence=gets.chomp.to_s
		file_example.write("\n #{sentence}")
	end

	
	file_example.close

end

createFile
file_example = File.open('test.txt')
print file_example.read

gets