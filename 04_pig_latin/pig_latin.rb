def translate(phrase)
  arr = phrase.split
  arr.each_with_index {|word, index| arr[index] = latinize_word(word)}.join(" ")
end

def latinize_word(word)
	vowels = ['a', 'e', 'i', 'o', 'u']
	first_vowel_index = 0

  word.split("").each_with_index do |char, i|
		if(char.upcase == 'Q')
			first_vowel_index = i + 2
			break
		elsif(vowels.include?char)
  	  first_vowel_index = i
  	  break
  	else
  		next
  	end
	end
	word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay"
end