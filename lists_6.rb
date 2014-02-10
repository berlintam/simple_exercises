# 6. Write a function that tests whether a string is a palindrome

string = "racecar"
string_2 = "Hello there!"

def palindrome(string)
  if string.reverse == string
    puts "I'm a palindrome!"
  else
    puts "I'm not a palindrome."
  end
end

puts palindrome(string)
puts palindrome(string_2)