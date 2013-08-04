class Array
	attr_accessor :sum, :square

  def sum
  	@sum = 0
  	self.each { |element| @sum += element }
  	@sum
  end

  def square
    self.map { |element| element = element ** 2}
  end

  def square!
    self.each_with_index { |element, i| self[i] = element ** 2}
  end
end