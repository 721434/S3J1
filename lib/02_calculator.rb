def add(num1,num2)
  return num1 + num2
end

def subtract(num1,num2)
  return num1-num2
end

def sum(array)
  somme = 0
  array.each do |num|
      somme = somme + num
  end
  return somme
end

def multiply(num1,num2)
  return num1*num2
end

def power(num,pow)
  return num ** pow
end

def factorial(n)
  fact = 0
  if n == 0
      fact = 1
  else
      fact = n * factorial(n-1)
  end
  return fact
end