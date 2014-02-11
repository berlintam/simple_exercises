# 10. Write a function that combines two lists by alternatingly
# taking elements, eg: [a,b,c], [1,2,3] => [a,1,b,2,c,3]

list_1 = [1,2,3]
list_2 = ['a','b','c']

# http://www.ruby-doc.org/core-2.1.0/Array.html

def alternating(list1, list2)
  list1.zip(list2).flatten
end

print alternating(list_1, list_2)