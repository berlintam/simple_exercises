# 15. Write the following sorting algorithms: Selection sort, Insertion sort, Merge sort, Quick sort,
# Stooge Sort.

# Selection sort:
# starts at the beginning of the list. The code then scans the rest of the list to find the smallest
# number. The smallest number is swapped into location. The code then moves on to the next number.

def selection_sort(array)
  # outer loop
  (0..array.size-1).each do |i|
    # save min value and min pos for swapping later
    min_value = array[i]
    min_index = i

    # take a the unordered rest of the array
    # if a value further up the list is smaller than the position
    # we're currently on, the values are swapped.
    (i..array.size-1).each do |j|
      if array[j] < min_value
        min_value = array[j]
        min_index = j
      end
    end

    puts "(i: #{i}) -> min_value #{min_value}"

    tmp = array[i]
    array[i] = min_value
    array[min_index] = tmp

    print array
    puts
    puts
  end
  #returns the last element of the function
  array
end

blah = [2,7,4,9,1,5]
print selection_sort(blah).to_a
