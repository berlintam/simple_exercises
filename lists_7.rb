# 7. Write three functions that compute the sum of the numbers in a list:
# using a for-loop, a while-loop and a recursion

# for loop
list = [1,2,3,4]

def sum_for_loop(array)
  sum = 0
  for num in array
    sum += num
  end
  puts sum
end

sum_for_loop(list)

# while loop
# this seems very un-ruby and I'd never do it so I'm doing it another way

list_2 = [2,4,6]

def sum_not_while_loop(array)
  puts array.inject(:+)
end

sum_not_while_loop(list_2)

# recursion (a method that calls itself)

list_3 = [3,5,7]

def recursion(array)
  # "it is crucial in all recursions to put in a stop of some sort in the
  # degenerate case before recursing. The degenerate case for us is when
  # the array is empty."
  # http://stackoverflow.com/questions/15737220/ruby-recursion-confusion
  # Without this line we get a stack level too deep error.
  return 0 unless array.length > 0
  # shift removes the first element in an array
  # it is then added to the remaining part of the array (which is the recursive part)
  array.shift + recursion(array)
end

puts recursion(list_3)
