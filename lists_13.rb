# 13. Write a function that takes a number and returns a list of its digits
# eg: 123 -> 1,2,3

def list_of_digits(num)
  print num.to_s.split('')
end

puts list_of_digits(3456789)