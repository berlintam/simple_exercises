require_relative 'tester'
# 1. Write a function that returns the largest element in a list

def largest_element(*args)
  array = []
  array.push(*args)
  array.sort![-1]
end
assert 45, largest_element(5, 2, 9, 45, 0, 1, 23)

# OR

def largest_element(*args)
  array = []
  array.push(*args)
  array.max
end

assert 289, largest_element(100, 9, 34, 7, 289)
