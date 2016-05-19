
file_example = File.open('test2.txt', 'w+')
file_example.truncate(0)
file_example.write('|USER      |PASSWORD|TRAVEL_DATE|DESTINATION|')

100.times do |index|
	year=rand(2016..2030)
	month=rand(1..12)
	day=rand(1..28)
	citys=["CBB","TDD","SC","TAR","LP","ORU","PTS","CHQ","PND","LI"]
	city=rand(1..9)
	file_example.write("\n|USER_#{index}    |PASS_#{index}  |#{day}/#{month}/#{year}   |#{citys[city]}|")
	
end
file_example.close
file_example = File.open('test.txt')
print file_example.read
