# Write a program that prints a multiplication table for numbers up to 12.

def multiplication_table(number)
  i = 0
  while i <= 12
    print "#{number} times #{i} is: #{number * i} \n"
    i += 1
  end
end

puts multiplication_table(2)

# OR

def multiplication_table(given_number)
  (1..12).each do |num_to_multiply|
    print "#{given_number} times #{num_to_multiply} is: #{given_number * num_to_multiply} \n"
  end
end

puts multiplication_table(3)