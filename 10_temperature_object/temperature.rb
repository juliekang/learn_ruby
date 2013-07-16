class Temperature
  attr_accessor :args

  def initialize(args)
    @args = args
  end

  def in_fahrenheit
  	args[:f] ? args[:f] : ctof(args[:c])
  end

  def in_celsius
  	args[:c] ? args[:c] : ftoc(args[:f])
  end

  def self.from_celsius(tempc)
    new({:c => tempc})
  end

  def self.from_fahrenheit(tempf)
    new({:f => tempf})
  end

  private

  def ftoc(tempf)
    tempc = (tempf - 32.0) * 5.0 / 9.0
    tempc
  end

  def ctof(tempc)
    tempf = (tempc * 9.0 / 5.0) + 32.0
    tempf
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