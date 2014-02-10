# 4. Write a function that returns the elements on odd positions in a list.

list = ["hello", "dog", "cat", "bob", "elephant"]
list_2 = [1, 2, 3, 4, 5]

def odd_elements(array)
  odd_list = []
  array.select.each_with_index do |string, index|
    if index.odd?
      odd_list.push(string)
    end
  end
  puts "I am your odd list!: #{odd_list}"
end

puts odd_elements(list)
puts odd_elements(list_2)