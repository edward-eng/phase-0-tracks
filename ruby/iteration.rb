def add_numbers
	print "Enter integer 1: "
	num1 = gets.chomp.to_i

	print "Enter integer 2: "
	num2 = gets.chomp.to_i
	yield(num1, num2)
end

add_numbers {|int1, int2| puts "#{int1} + #{int2} = #{int1 + int2}"}