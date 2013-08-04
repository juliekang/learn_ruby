def echo(phrase)
  phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, times=2)
	sentence = ""
  (1..times).each { |x| sentence += "#{phrase} " }
  sentence.strip
end

def start_of_word(word, how_many)
  word[0...how_many]
end

def first_word(phrase)
  phrase.split(" ")[0]
end

def titleize(phrase)
	little_words = ["to", "a", "an", "the", "at", "in", "with", "and", "but", "or", "over", "of"]
  phrase.split.each_with_index { |word, i| word.capitalize! unless i > 0 && little_words.include?(word) }.join(" ")
end