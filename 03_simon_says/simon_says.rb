def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, number=2)
  total_phrase = ""
  (1..number).each do |x| 
    total_phrase += phrase
    total_phrase += " " if x < number
  end
  total_phrase
end

def start_of_word(word, number)
  word.slice(0,number)
end

def first_word(phrase)
  phrase_array = phrase.split()
  phrase_array[0]
end

def titleize(phrase)
  banned_array = ["to", "a", "the", "at", "in", "with", "and", "but", "or", "over"]
  phrase.split.each_with_index { |word, i| word.capitalize! unless i > 0 && banned_array.include?(word) }.join " "
end