class Dictionary

  attr_accessor :entries, :keywords

  def initialize
  	@entries = {}
  	@keywords = []
  end

  def keywords
    @entries.keys.sort
  end

  def add(args)
  	args = { args => nil } if args.class == String
    args.each { |key, value| @entries[key] = value }
  end

  def include?(key)
    @entries.key?(key)
  end

  def find(str)
    @entries.select { |k, v| k.include?str }
  end

  def printable
  	string = ""
  	@entries.sort.each { |k, v| string += "[#{k}] \"#{v}\"\n" }
  	string.strip
  end
end