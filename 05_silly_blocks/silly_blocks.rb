def reverser
  yield.split.each {|word| word.reverse!}.join(" ")
end

def adder(addend = 1)
  yield + addend
end

def repeater(times = 2)
  (1..times).each {yield}
end