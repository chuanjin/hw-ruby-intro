# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|x| sum += x}
  sum
end

def max_2_sum arr
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    r_arr = arr.sort.reverse
    r_arr[0] + r_arr[1]
  end
end

def sum_to_n? arr, n
  if arr.empty? or arr.length == 1
    false
  else

    i = 0
    while i < arr.length - 1 do
      j = i+1
      while j < arr.length do
        return true if arr[i] + arr[j] == n
        j=j+1
      end
      i=i+1
    end
    return false
  end

end

# Part 2

def hello(name)
  "Hello, " + "#{name}"
end

def starts_with_consonant? s
  return false if s.empty?

  vowls = ['a','e','i','o','u']
  alphabet = ('a'..'z').to_a

  conlist = alphabet - vowls

  uconlist = conlist.map(&:upcase)
  final_arry = conlist + uconlist

  for elem in final_arry
    return true if s.start_with?(elem)
  end
  false

end

def binary_multiple_of_4? s
  return true if s == '0'
  d = s.to_i(2)
  return false if d == 0
  return true if d % 4 == 0
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price

  end

  def price_as_string
    '$' + '%.2f' % @price

  end
end
