def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(nums)
  return 0 if nums == []
  nums.reduce(:+)
end

def multiply(x,y)
  x*y
end

def power(x,y)
  x**y
end

def factorial(x)
  return 0 if x == 0
  return 1 if x == 1

  product = 1
  (1..x).each do |y|
 	product = product * y
  end
  product
end