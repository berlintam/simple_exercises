require_relative 'tester'
# 5. Write a function that computes the running total of a list

list = [1,2,3,4,5,6,7,8]

def total_of_list(array)
  array.inject(:+)
end

assert 36, total_of_list(list)

