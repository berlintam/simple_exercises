# 15. Write the following sorting algorithms: Selection sort, Insertion sort, Merge sort, Quick sort,
# Stooge Sort.
class List

  # this part just splits up the array into lots of single number arrays
  def mergesort(list)
    return list if list.count <= 1
    puts "I am your array #{list}"
    # gives us the middle position of the list
    middle = list.size / 2
    # gives us the first half of the array
    left = list[0..middle - 1]
    puts "I am left #{left}"
    # takes us from the middle to the end of the list giving us the second hald
    right = list[middle..list.count]
    puts "I am right #{right}"
    puts "--------"

    merge(mergesort(left), mergesort(right))
  end

  def merge(left, right)
    new_list = []
    puts "final #{@final}"

    until left.empty? or right.empty?
      if left.first <= right.first
        new_list << left.shift
        puts "I am the left new list #{new_list}"
      else
        new_list << right.shift
        puts "I am the right new list #{new_list}"
      end
    end
    @final = new_list.concat(left).concat(right)
  end
end

array = [1,2,3,4,5,6,7,8,9,10]
s = List.new
print s.mergesort(array)

#http://stackoverflow.com/questions/21121075/how-do-i-write-a-merge-sort
#http://sandmoose.com/post/60823914823/merge-sort-in-ruby
#http://en.wikibooks.org/wiki/Algorithm_Implementation/Sorting/Merge_sort#Ruby