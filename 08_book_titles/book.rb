class Book
  attr_accessor :title

  def title
  	titleize(@title)
  end

  def titleize(phrase)
	  little_words = ["to", "a", "an", "the", "at", "in", "with", "and", "but", "or", "over", "of"]
    phrase.split.each_with_index { |word, i| word.capitalize! unless i > 0 && little_words.include?(word) }.join(" ")    
  end
end