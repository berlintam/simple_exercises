# 1. Write a function that returns the largest element in a list

def largest_element(*args)
  array = []
  array.push(*args)
  puts array.sort![-1]
end

largest_element(5, 2, 9, 45, 0, 1, 23)

# OR

def largest_element(*args)
  array = []
  array.push(*args)
  puts array.max
end

largest_element(100, 9, 34, 7, 289)
