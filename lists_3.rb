# 3. Write a function that checks whether an element occurs in a list

# from the command line:
puts "Give me a list of numbers: "
list_of_numbers = gets.chomp
list_of_numbers = list_of_numbers.split(",").map(&:to_i)
puts "Now give me one number: "
number = gets.chomp.to_i

if list_of_numbers.include? number.to_i
  puts "Your number is in the list of numbers!"
elsif
  puts "Your number isn't in the list!"
else
  puts "This is not a number."
end

puts '-----------------'
# the function:
def list_checker(*args)
  array = *args
  if array.include? @number
    puts "This number is in the list"
  else
    puts "This number isn't in the list"
  end
end

list_checker(1,2,3)
@number = 5



