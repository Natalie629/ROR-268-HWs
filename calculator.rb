def calculate(operation, num1, num2)
  case operation  
  when 1 
    puts "#{num1} + #{num2} = #{num1 + num2}"
  when 2 
    puts "#{num1} - #{num2} = #{num1 - num2}"
  when 3
    puts "#{num1} * #{num2} = #{num1 * num2}"
  else
    puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
  end
end

#--------------Main program starts here-----------------

puts "Welcome to Ruby Calculator!!!"

puts "Please enter the first number:"
num1 = gets.chomp.to_i
puts "Please enter your operation:"
puts "1) add 2) substract 3) multiply 4) divide"
operation = gets.chomp.to_i
puts "Please enter the second number:"
num2 = gets.chomp.to_i

puts "Your answer is:"
calculate(operation, num1, num2)

