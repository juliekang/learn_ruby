def reverser
	yield.split.each { |word| word.reverse! }.join(" ")
end

def adder(amt = 1)
	yield + amt
end

def repeater(amt = 2)
	amt.times { yield }
end