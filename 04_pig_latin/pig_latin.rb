$VOWELS = ["a", "e", "i", "o", "u"]

def translate(phrase)
  phrase_array = phrase.split()

  phrase_array.each_with_index do |word, i|
    first_letter = word[0]

    #starts with vowel
    if $VOWELS.include?(first_letter)
      phrase_array[i] = word + "ay" 
      next
    end
 
    #starts with consonant or consonant blend
    phrase_array[i] = latinize_word(word) 
  end
  phrase_array.join(" ")
end

def latinize_word(word)
  first_consonants = ""  
  q_flag = nil
  word_array = word.each_char.to_a
  
  word_array.each_with_index do |c, word_index| 
    if c == "q"
      q_flag = 1 
    elsif c == "u" && q_flag
      first_consonants += c
      return word_array[word_index+1..-1].join + first_consonants + "ay"
    elsif $VOWELS.include?(c) && !q_flag
      	return word_array[word_index..-1].join + first_consonants + "ay" 
    end
    first_consonants += c
  end
end