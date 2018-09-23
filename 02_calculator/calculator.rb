#write your code here
def add(number_a, number_b)
    number_a + number_b
end

def subtract(number_a, number_b)
    number_a - number_b
end

def sum(numbers)
    sum = 0
    numbers.inject(0) { |sum, x| sum + x }
end

def multiply(numbers)
    product = 0
    numbers.reduce(1) { |product, x| product * x }
end

def power(number_a, number_b)
    number_a ** number_b
end

def factorial(number)
    if number == 0
        return 1
    else
        return (1..number).inject { |product, i| product * i }
    end
end

