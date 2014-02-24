# 18. Write a function that translates a text to pig latin by taking the
# first letter of every word, moving it to the end of the word and adding 'ay'.
# The quick brown fox becomes: "Hetay uickqay rownbay oxfay."

sentence = "hello how are you"

def pig_latin(string)
  words = string.split
  new_words = words.map! do |word|
                ending = word[0] + 'ay'
                word[0] = ''
                ending.prepend(word)
              end
  puts new_words.join(' ')
end

print pig_latin(sentence)