puts "Ruby Calculator"
puts "\n"
puts "----- addition       (+)"
puts "----- subtraction    (-)"
puts "----- multiplication (*)"
puts "----- division       (/)"
puts "----- squared        (**)"
puts "** Must have a space before and after operator"
puts "\n"
puts "Example format: 10 * 2  --or--  5 + 10"

begin
  puts "Enter math operation below:"

  # Get user Math statement 
  user_array = gets.chomp.split

  # Check to make sure statement has valid operator
  while !user_array.any? { |symbol| ["+", "-", "*", "/", "**"].include?(symbol) }
    puts "You have not entered a valid math operator."
    puts "Please ensure you have a space before and after operator."
    puts "Valid operators are:"
    puts "\n"
    puts "-->  +   addition"
    puts "-->  -   subtraction"
    puts "-->  *   multiplication"
    puts "-->  /   division"
    puts "-->  **  squared"
    puts "\n"
    puts "Try again:"
    user_array = gets.chomp.split
  end

  first_number  = user_array[0].to_i
  operator      = user_array[1]
  second_number = user_array[2].to_i

  # Execute correct math operation based on operator
  case operator
  when "+"
    puts "Result: #{first_number + second_number}"
  when "-"
    puts "Result: #{first_number - second_number}"
  when "*"
    puts "Result: #{first_number * second_number}"
  when "/"
    puts "Result: #{first_number / second_number}"
  when "**"
    puts "Result: #{first_number ** second_number}"
  end

  puts "New math operation? (Y/N)"
  new_operation = gets.chomp.upcase
end until new_operation != 'Y'