class Dictionary
  attr_accessor :entries, :keywords

  def initialize
  	self.entries = {}
  	self.keywords = []
  end

  def add(args)
    args = { args => nil } if args.class == String
    @entries = @entries.merge(args)
    @keywords << args.keys.first
  end

  def keywords
    @keywords.sort
  end

  def include?(string)
    @entries.has_key?(string)
  end

  def find(prefix)
    @entries.select {|k,v| k.start_with?(prefix) }
  end

  def printable
  	strings = []
    @entries.sort.each { |k,v| strings <<  "[#{k}] \"#{v}\"" }
    strings.join("\n")
  end
end