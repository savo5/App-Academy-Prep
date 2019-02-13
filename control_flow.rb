# EASY

# Return the argument with all its lowercase characters removed.
# str = "Hello my name is Sandy. Nice to meet you, Jill." => "HSNJ"

def destructive_uppercase(str)
  i = 0
  new_str = ""

  while i < str.length
    if str[i] != str[i].downcase
      new_str += str[i]
    end
    i += 1
  end

  return new_str


end

# Return the middle character of a string. Return the middle two characters if the word is of even length, e.g. middle_substring("middle") => "dd", middle_substring("mid") => "i"

# str = 'sandy' => 'n'
# str = Michelle => 'he'
def middle_substring(str)
  mid = str.length / 2
  if str.length.odd?
    return str[mid]
  end

  str[mid - 1] + str[mid]

end

# Return the number of vowels in a string.
def num_vowels(str)
  str = str.downcase
  str = str.chars
  vowels = ["a", "e", "i", "o", "u"]

  count = 0
  i = 0
  while i < str.length
    if vowels.include?(str[i])
      count += 1
    end
    i += 1
  end

  count

end

# Return the factoral of the argument (num). A number's factorial is the product of all whole numbers between 1 and the number itself. Assume the argument will be > 0.

# num = 5 => 5 * 4 * 3 * 2 * 1 => 120
# starting with num subtract 1 and multiple until num is equal to 1
def factorial(num)
  factorial = 1
  while num > 1
    factorial = factorial * num
    num -= 1
  end

  factorial

end


# MEDIUM

# Write your own version of the join method. separator="" ensures that the default argument is "".

# take each element in array join them into a string
def my_join(arr, separator="")

  join = ""

  i = 0
  while i < arr.length
    join += arr[i]
    join += separator unless i == arr.length - 1
  i += 1
  end

  return join
end

# Write a method that converts its argument to weirdcase, where every odd character is lowercase and every even is uppercase, e.g. weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  i = 0
  while i < str.length
    if i.odd?
      str[i] = str[i].upcase
    else
      str[i] = str[i].downcase
    end
  i += 1
  end

  return str

end

# Reverse all words of five more more letters in a string. Return the resulting string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like my luck has desrever")

# go through each word in string => split words in string into array
# if word has at least 5 letters, reverse word => if length of each index is at least 5, reverse


def reverse_five(str)
 str = str.split(" ")

  i = 0
  while i < str.length
    if str[i].length >= 5
      str[i].reverse!
    end
  i += 1
  end

  return str.join(" ")
end

# Return an array of integers from 1 to 30 (inclusive), except for each multiple of 3 replace the integer with "fizz", for each multiple of 5 replace the integer with "buzz", and for each multiple of both 3 and 5, replace the integer with "fizzbuzz".

# create an array from 1 to 30 inclusive
# go through each item in array
# if array is a multiple of 3 and 5, replace with fizzbuzz
# if array is a multiple of 5, replace with buzz
# if array is a multiple of 3, replace with fizz

def fizzbuzz
  arr = (1..30).to_a

  i = 0
  while i < arr.length
    if arr[i] % 3 == 0 and arr[i] % 5 == 0
      arr[i] = "fizzbuzz"
    elsif arr[i] % 3 == 0
      arr[i] = "fizz"
    elsif arr[i] % 5 == 0
      arr[i] = "buzz"
    end

  i += 1
  end

  arr

end


# HARD

# Write a method that returns a new array containing all the elements of the original array in reverse order.
def my_reverse(arr)
  reverse_arr = []

  i = 0
  while i < arr.length
    reverse_arr.unshift(arr[i])
    i += 1
  end

reverse_arr


end

# Write a method that returns a boolean indicating whether the argument is prime.
def prime?(num)
  if num == 1
    return false
  end

  i = 2
  while i < num / 2
    if num % i == 0
      return false
    end
  i += 1
  end

  true

end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)

end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)


end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)


  # your code goes here
end
