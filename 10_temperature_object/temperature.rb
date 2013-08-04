class Temperature
  attr_accessor :temp_hash

  def initialize(temp_hash)
    @temp_hash = temp_hash
  end

  def in_fahrenheit
    temp_hash[:f] ? temp_hash[:f] : ctof(temp_hash[:c])
  end

  def in_celsius
    temp_hash[:c] ? temp_hash[:c] : ftoc(temp_hash[:f])
  end

  def self.from_celsius(tempc)
    self.new({:c => tempc})
  end

  def self.from_fahrenheit(tempf)
    self.new({:f => tempf})
  end
  
  private

	def ftoc(tempf)
	  (tempf - 32.0) * 5.0 / 9.0
	end

	def ctof(tempc)
		tempc * 9.0 / 5.0 + 32.0
	end  
end

class Celsius < Temperature
  def initialize(tempc)
    super({:c => tempc})
  end
end

class Fahrenheit < Temperature
	def initialize(tempf)
		super({:f => tempf})
	end
end