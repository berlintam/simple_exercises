# 3. Modify the previous program such that only the users Alice and Bob are greeted with their names.

print "What is your name? "
while name = gets.chomp
  if name == 'Alice'
    puts 'Hello Alice'
    break
  elsif name == 'Bob'
    puts 'Hello Bob'
    break
  else
    puts 'Hello. Your name is not Alice or Bob'
    break
  end
end
