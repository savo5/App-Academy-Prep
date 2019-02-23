# EASY

# Define a method that returns the sum of all the elements in its argument (an array of numbers).
def array_sum(arr)
  arr.reduce(:+)
end

# Define a method that returns a boolean indicating whether substring is a substring of all the long_strings (an array).
def in_all_strings?(long_strings, substring)
  long_strings.all? {|word| word.include?(substring)}
end

# Define a method that accepts a string of lower case words (no punctuation) and returns an array of letters that occur more than once.
def non_unique_letters(string)
  letters = string.chars.uniq
  letters.select {|letter| string.count(letter) > 1 }
end

# Define a method that returns an array of the longest two words (in order) in the method's argument. Ignore punctuation!
def longest_two_words(string)
  string = string.delete(".,")
  words = string.split(" ")
  words.sort_by {|word| word.length}[-2..-1]

end


# MEDIUM

# Define a method that returns an array of letters that do not occur in the method's argument.
def missing_letters(string)
  string = string.downcase
  ("a".."z").to_a.reject {|letter| string.include?(letter) }
end

# Define a method that accepts two years and returns an array of the years within that range (inclusive) that have no repeated digits. Hint: helper method?
def no_repeat_years(first_yr, last_yr)
  years = (first_yr..last_yr).to_a
  years.select {|year| not_repeat_year?(year)}

end

def not_repeat_year?(year)
  year.to_s.split("").uniq.join.to_i == year
end


# HARD

# Define a method that, given an array of songs at the top of the charts, returns the songs that only stayed on the chart for a week at a time. Each element corresponds to a song at the top of the charts for one particular week.
# Songs CAN reappear on the chart, but if they don't appear in consecutive weeks, they're "one-week wonders."
# Suggested strategy: find the songs that appear multiple times in a row and remove them.
# You may wish to write a helper method no_repeats?
def one_week_wonders(songs)

end

def no_repeats?(song_name, songs)


end


# Define a method that, given a string of words, returns the word that has the letter "c" closest to the end of it. If there's a tie, return the earlier word. Ignore punctuation. If there's no "c", return an empty string. You may wish to write the helper methods c_distance and remove_punctuation.
def for_cs_sake(string)
  string = string.delete!(",.?!").split(" ")

  closest_c_word = ""

  string.each do |word|
    if c_distance(word) == nil
      next
    elsif c_distance(word) < closest_c_word
end

def c_distance(word)
  word.reverse.index("c")
end


# Define a method that, given an array of numbers, returns a nested array of two-element arrays that each contain the start and end indices of whenever a number appears multiple times in a row.
# repeated_number_ranges([1, 1, 2]) => [[0, 1]]
# repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]
def repeated_number_ranges(arr)


end
