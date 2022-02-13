# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for num in arr
    sum += num
  end
  return sum
end

def max_2_sum arr
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    arr = arr.sort()  # Sort the array.
    max1 = arr[arr.length() - 1]
    max2 = arr[arr.length() - 2]
    result = max1 + max2
    return result
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new
  for num in arr
    if hash.has_value?(num)
      hash[num] += 1
    else
      hash[num] = 1
    end

    diff = (num - n).abs
    if hash.has_value?(diff)
      if ( (diff != num) || ((diff == num) && (hash[diff] > 1)) )
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s = s.downcase
  if s.length() == 0
    return false
  else
    if ( (s[0] == "a") || (s[0] == "e") || (s[0] == "i") || (s[0] == "o") or (s[0] == "u") || ((s[0].ord >= 97 and s[0].ord <= 122) == false) )
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  if s.length() == 0
    return false
  end

  i = 0
  size = s.length()
  num = 0
  while i < size
    if ((s[i] != "1") && (s[i] != "0"))
      return false  # Not a binary number.
    end

    num = num + (s[i].to_i * (2 ** (size-i-1)))
    i += 1 
  end

  if num % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn_parm, price_parm)
    if ((isbn_parm.length() == 0) || (price_parm <= 0))
      raise ArgumentError
    end
    @isbn = isbn_parm
    @price = price_parm
  end

  def price_as_string()
    return "$" + ('%.2f' % @price.to_f).to_s
  end
end
