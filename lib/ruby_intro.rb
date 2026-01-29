# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each do |num|
    total += num
  end
  total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  sorted_arr = arr.sort
  sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  seen = {}
  arr.each do |num|
    complement = n - num
    return true if seen[complement]
    seen[num] = true
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
