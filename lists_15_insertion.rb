# 15. Write the following sorting algorithms: Selection sort, Insertion sort, Merge sort, Quick sort,
# Stooge Sort.

def insertion_sort(array)
  # outer loop
  # keeps track of where we are
  (0..array.size-1).each do |j|

    puts "LOOKING AT array[#{j}]"

    # we swap numbers when the number to the left of j is bigger than j
    # we repeat until the left number is no longer larger or until
    # we are at the very left:

    # while j (our current position) is bigger than 0 and the number to the left is larger than the current number
    while j > 0 && array[j-1] > array[j]
      print "j = array[#{j}] -> swapping #{array[j]} and #{array[j-1]}\n"

      array[j], array[j-1] = array[j-1], array[j]
      print "#{array}\n"

      # why is this line needed?
      j = j-1
      puts
    end
  end
  array
end

array = [2,6,78,3,90,1,4]

print insertion_sort(array)