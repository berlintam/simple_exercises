# 11. Write a function that merges two sorted lists into a new list

list_1 = [3,6,2,8,1]
list_2 = [9,3,6,2,8]

def sorted_merged(list1, list2)
  new_list = list1.concat list2
  # uniq gets rid of all the duplicate numbers
  puts new_list.uniq.sort!
end

puts sorted_merged(list_1, list_2)