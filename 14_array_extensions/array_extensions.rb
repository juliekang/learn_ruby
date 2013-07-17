class Array
  attr_accessor :sum, :square

  def sum
  	@sum = 0
  	self.each {|element| @sum += element}
  	@sum
  end

  def square
  	@square = []
  	self.each {|element| @square << element * element }
  	@square
  end

  def square!
  	self.each_with_index {|element, i| self[i] = element * element }
  end

end