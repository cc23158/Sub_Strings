def substrings(word, array)
  responseHash = {}
  arraySentence = word.downcase().split(" ") # array with each word of the sentence, including [Space]

  arraySentence.each do |s| # for each word of the sentence
    array.each do |w|       # verify if it's in the dictionary
      if s.include? w
        if responseHash.keys.include? w # if the word is already in responseHash, +1
          responseHash[w] += 1

        else # if the word isn't in responseHash, add it with count = 1
          responseHash[w] = 1
        end
      end
    end
  end

  puts responseHash
end

arrayStrings = Array.new()
dictionaryWord = "go"
sentence = ""

while dictionaryWord.strip() != "" do
  print "Enter a word to be added to the dictionary ([Enter] to finish): "
    dictionaryWord = gets.chomp

  arrayStrings.push(dictionaryWord)
end

print "Enter a sentence: "
sentence = gets.chomp

substrings(sentence, arrayStrings)
