# Write a guessing game where the user has to guess a secret number.
# After every guess the program tells the user whether his number
# was too large or too small. At the end the number of tries needed should
# be printed. It counts only as one try if the user inputs the same number consecutively.

def prompt
  print "I'm thinking of a number between 0 and 10...\n"
  print "Guess which one it is!\n"
  @number = gets.chomp.to_i
end

secret_number = rand(10)
tries = []
i = 0

until @number == secret_number
  prompt
  if @number > secret_number
    tries.push(i)
    i += 1
    puts "Too big!"
  elsif @number < secret_number
    tries.push(i)
    i += 1
    puts "Too small!"
  else @number == secret_number
    puts "You got it! It took you #{tries.count + 1} tries!"
  end
end


