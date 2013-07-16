class Book

  attr_accessor :title

  def title
    titleize(@title)
  end

  def titleize(phrase)
    banned_array = ["to", "a", "an", "the", "at", "in", "with", "and", "but", "or", "over", "of"]
    phrase.split.each_with_index { |word, i| word.capitalize! unless i > 0 && banned_array.include?(word) }.join " "
  end

end