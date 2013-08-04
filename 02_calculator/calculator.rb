def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	arr == [] ? 0 : arr.inject(:+)
end

def multiply(x, y)
	x * y
end

def divide(x, y)
	x / y
end

def power(x, y)
  x ** y
end

def factorial(x)
	return 0 if x == 0
	product = 1
  (1..x).each {|i| product *= i}
  product
end