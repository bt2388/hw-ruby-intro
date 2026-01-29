# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each do |num|
    total += num
  end
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  sorted_arr = arr.sort
  return sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  seen = {}
  arr.each do |num|
    complement = n - num
    return true if seen[complement]
    seen[num] = true
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  s= "Hello, #{name}"
  s
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty?
  first_char = s[0].downcase
  return false unless first_char =~ /[a-z]/
  return !(first_char =~ /[aeiou]/)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false if s.empty?
  return false unless s =~ /^[01]+$/
  return s.end_with?('00')
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be empty") if isbn.empty?
    raise ArgumentError.new("Price must be greater than 0") if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_reader :isbn
  attr_reader :price

  def price_as_string
    format("$%.2f", @price)
  end
  
end
