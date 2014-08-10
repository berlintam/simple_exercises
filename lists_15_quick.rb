# 15. Write the following sorting algorithms: Selection sort, Insertion sort, Merge sort, Quick sort,
# Stooge Sort.

# choose the pivot
# put 'the wall' at the start of the array
# call the first element of the array the current element
# if the current element is larger than the pivot, we leave it where it is
# we move on to the next element (which becomes the current element) - increment the current element
# if the current element is smaller than the pivot we put it to the left of the wall.
  # we can do this by switching the current element with the element sitting just to the right of the wall
  # and then moving the wall up one index so that the smallest element is on the left side of the wall
# we keep doing this until we have 2 sections: those smaller than the pivot on the left of the wall
# and those larger than the pivot to the right of the wall
# we want to put the pivot between the two.
# So we switch the pivot with the first element on the right side of the wall
# we then repeat the process for the sub arrays on the left and right side of the wall.
# The wall moves up one element
# recursive!?!?!

# kinda works... but only half the time

require 'pry'

class QuickSort

  def quicksort(array)
    if array.length <= 1
      return array
    else
      # randomly picks a number from the array to be pivot
      pivot = array.sample
      puts "I am your array: #{array}"

      array.delete_at(array.index(pivot))
      puts "I am your pivot: #{pivot}"

      @smaller = []
      @larger = []
    end

    array.each do |x|
      if x <= pivot
        puts "smaller: #{@smaller}"
        @smaller << x
      else
        puts "larger: #{@larger}"
        @larger << x
      end
    end


    # sorted_array = []
    # sorted_array << quicksort(@smaller)
    # puts "small sorted array #{sorted_array}"
    # sorted_array << pivot
    # sorted_array << quicksort(@larger)
    # puts "large sorted array #{sorted_array}"
    # sorted_array.flatten!
    sorted_array = []
    sorted_array << quicksort(@smaller)
    sorted_array << pivot
    sorted_array << quicksort(@larger)
    return sorted_array.flatten!

  end
end


array = [4,78,23,0,1,35,68]
q = QuickSort.new
print q.quicksort(array)
