#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  total = 0
  arr.each{ |num| total += num }
  total
end

def multiply(*num1)
  total = 1
  num1.each { |num| total *= num }
  total
end

def power (num1, num2)
  num1**num2
end

def factorial(num)
  if num < 0
    puts 'Must be a non-negative number'
  elsif num <= 1
    num = 1
  else
    num * factorial( num - 1 ) #apparently you can call a function within its own function...
  end
end
