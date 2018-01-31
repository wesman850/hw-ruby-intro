# When done, submit this entire file to the autograder.

trialPrice = "%0.2f" % 30
puts trialPrice

# Part 1
def sum arr
  total = 0
  for e in arr
    total += e
  end
  return total
end

def max_2_sum arr
  if(arr.length == 0)
    return 0
  end
  if(arr.length == 1)
    return arr[0]
  end
  if(arr.length >= 2)
    max1 = arr.max
    arr.delete_at(arr.index(arr.max))
    max2 = arr.max
    return max1 + max2
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if(arr.combination(2).find{|val1,val2| val1+val2==n})
    return true
  else
    return false
  end

  # for comboArray in arr
  #   sum = 0
  #   comboArray.each do |i|
  #   sum += i
  #   if sum == n
  #     return true
  #   end
  # end
  # return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if(s.empty? || !(s.chr =~ /[[:alpha:]]/))
    return false
  else
    if(['a','e','i','o','u'].include? s.chr.downcase)
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  else
    if s =~ /[^01]/
      return false
    end
    if (s == '0') || s.end_with?('00')
      return true
    end
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    # Instance variables
    raise ArgumentError, 'ISBN is an empty string' unless !(isbn.empty?)
    raise ArgumentError, 'Price is less than or equal to zero' unless price > 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    # formatPrice = @price
    formatPrice = "%0.2f" % @price
    return "$#{formatPrice}"
  end
end
