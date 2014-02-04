# Write a program that asks the user for a number n and gives him the possibility
# to choose between computing the sum and computing the product of 1,...n

def sum(number)
  a = (1..number).to_a
  puts a.inject(:+)
end

def product(number)
  b = (1..number).to_a
  puts b.inject(:*)
end

print "Please give me a number : "
number = gets.chomp.to_i
print "Do you want the sum or the product of the number? : "
requested_method = gets.chomp

# this uses a regular expression to see if sum or product is entered
# and makes it case insensitive
if requested_method =~ /sum|product/i
  send(requested_method, number)
else
  puts "I don't know what you mean"
end