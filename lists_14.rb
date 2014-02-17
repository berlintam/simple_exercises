# 14. Write functions that add, subtract, and multiply two numbers in their
# digit-list representation(and return a new digit list).

number1 = 123456
number2 = 789

def list_of_digits(num)
  list = num.to_s.split('')
  list.map! do |i|
    i.to_i
  end
end

def add(list1, list2)
  new_list = list_of_digits(list1) + list_of_digits(list2)
  new_list.inject(:+)
end

def multiply(list1, list2)
  new_list = list_of_digits(list1) + list_of_digits(list2)
  new_list.inject(:*)
end

def subtract(list1, list2)
  first_number = list_of_digits(list1).inject(:+)
  second_number = list_of_digits(list2).inject(:+)
  puts first_number - second_number
end

puts add(number1, number2)
puts multiply(number1, number2)
puts subtract(number1, number2)