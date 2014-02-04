
# 4. Write a program that asks the user for a number n and prints the sum of the
# numbers 1 to n

def sum_of_all_numbers(number)
  i = 0
  numbers = []

  while i < number
    numbers.push(i)
    i += 1
  end

  puts numbers.inject(:+)

end

print "Please give me a number "
number = sum_of_all_numbers gets.chomp.to_i