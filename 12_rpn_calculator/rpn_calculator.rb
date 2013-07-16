class RPNCalculator
  attr_accessor :value, :stack

  def initialize
    @stack = []
    @value = 0
  end

  def push(num)
    @stack.push(num)
  end

  def plus
    @value = grab_two_nums.reduce(:+)
  	@stack.push(@value)
  end

  def times
    @value = grab_two_nums.reduce(:*)
  	@stack.push(@value)
  end

  def minus
  	nums = grab_two_nums
    @value = nums[1] - nums[0]
  	@stack.push(@value)
  end

  def divide
  	nums = grab_two_nums
    @value = nums[1].to_f / nums[0].to_f
  	@stack.push(@value)
  end

  def grab_two_nums
  	first_value = @stack.pop
    second_value = @stack.pop
    raise 'calculator is empty' if first_value.nil? || second_value.nil?	
    [first_value, second_value]
  end

  def tokens(string)
    temp_array = string.split(" ")
    operators = ['+', '-', '*', '/']

    temp_array.map!  { |token| operators.include?(token) ? token.to_sym : token.to_f }
  end

  def evaluate(string)
    temp_array = tokens(string)
    temp_array.each do |token|
      if token == :+
      	plus
      elsif token == :-
      	minus 
      elsif token == :*
      	times
      elsif token == :/
      	divide
  	  else 
  	  	@stack.push(token)
  	  end
    end
    return value
  end
end