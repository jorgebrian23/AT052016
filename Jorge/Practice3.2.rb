a=10
b=20
puts "Arithmetic operations"

puts "Addition 10 + 20 = #{a+b}"
puts "Subtraction 10 - 20 = #{a-b}"
puts "Multiplication 10 * 20 = #{a*b}"
puts "Divisio 20 / 10 = #{b/a}"
puts "Modulus 20 % 10 = #{b%a}"
c=3
d=5
puts "Exponent 5**3 = #{d**c}"

puts "Comparison operators"
puts " 10 == 20? = #{a==b}"
puts " 10 != 20? = #{a!=b}"
puts " 10 > 20? = #{a>b}"
puts " 10 < 20? = #{a<b}"
puts " 10 >= 20? = #{a>=b}"
puts " 10 <= 20? = #{a<=b}"

puts " 10 <=> 20? = #{a<=>b}"
puts " 1...20? = #{(1...b)===a}"


puts "Assignment operators"
variable=0
puts "variable = 10+20, variable= #{variable=b+a}"
puts "variable += 10, variable= #{variable+=a}"
puts "variable -= 10, variable= #{variable-=a}"
puts "variable *= 10, variable= #{variable*=a}"
puts "variable /= 10, variable= #{variable/=a}"
puts "variable %= 10, variable= #{variable%=a}"
puts "variable **= 5, variable= #{variable**=d}"

puts "Logical operators"

puts "10 and 20 = #{a and b}"
puts "10 or 20 = #{a or b}"
puts "10 && 20 = #{a && b}"
puts "10 || 20 = #{a || b}"
puts "!(10 && 20) = #{!(a&&b)}"
puts "not(10 && 20) = #{not(a&&b)}"



