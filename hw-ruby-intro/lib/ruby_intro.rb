# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.size == 0
    arr_sum = 0
  else 
    arr_sum = 0
    for i in arr
      arr_sum = arr_sum + i
    end
  end
  return arr_sum
end

def max_2_sum arr
  if arr.size == 0
    arr_sum = 0
  elsif arr.size == 1
    arr_sum = arr[0]
  else
    arr = arr.sort
    arr_sum = arr.reverse[0] + arr.reverse[1]
  end
end

def sum_to_n? arr, n
  if arr.size == 0 or arr.size == 1
    return false
  else 
    arr.permutation(2).any? {|a, b| a + b == n}
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.size == 0
    return false 
  end
  if s[0].match(/^[[:alpha:]]$/)
    if s.start_with?('A','a','E','e','I','i','O','o','U','u')
      return false
    else 
      return true 
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true 
  end
  if s.match(/^[10]*00$/) != nil
    return true
  else 
    return false 
  end
end

# Part 3

class BookInStock
  #https://dev.to/k_penguin_sato/ruby-getters-and-setters-1p30
  attr_accessor :isbn, :price 
  
  def initialize(isbn, price)
    if isbn.empty? or price <=0
      raise ArgumentError.new("Invalid inputs") 
    end
    
    @isbn = isbn
    @price = price 
  end
  
  def price_as_string 
    "$" + sprintf("%2.2f", price)
  end
end


