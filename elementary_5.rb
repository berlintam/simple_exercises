# 5. Modify the previous program such that only multiples of three or five are
# considered in the sum, eg. 3,5,6,9,10,12,15 for n = 17

def sum_of_all_numbers(number)
  i = 0
  numbers = []
  divisible_numbers = []

  while i < number
    numbers.push(i)
    i += 1
  end

  numbers.each do |num|
    if num % 3 == 0
      divisible_numbers.push(num)
    elsif num % 5 == 0
      divisible_numbers.push(num)
    end
  end

  puts "#{divisible_numbers} = #{divisible_numbers.inject(:+)}"

end

print "Please give me a number "
number = sum_of_all_numbers gets.chomp.to_i
