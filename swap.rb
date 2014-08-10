array = [2,6,4,7]

def swap(array)
  temp = array[0] # (temp = 2)
  array[0] = array[2] #(array[0] = 4)
  array[2] = temp #(array[2] = 2)
  puts array # [4, 6, 2, 7]
end

puts swap(array)

#http://www.programarcadegames.com/index.php?lang=en&chapter=sorting