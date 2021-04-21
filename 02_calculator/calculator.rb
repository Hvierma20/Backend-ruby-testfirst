#write your code here

def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(a)
  sum=0
  a.each do |x| 
    sum += x 
    end
  sum
end


def multiply(*nums)
  product = 1
  nums.each do |x|
    product *= x
  end
  product
end

def power(num1,num2)
  num1**num2
end
  
def factorial(num1)
    fact=1
    num1.times do |x| 
      fact*=(x+1)
      x+=1
    end
      fact
end

puts factorial(0)
# puts factorial(1)
# puts factorial(2)
# puts factorial(5)
# puts factorial(10)