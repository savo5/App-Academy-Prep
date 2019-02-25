# EASY

# Define a method that, given a sentence, returns a hash of each of the words as keys with their lengths as values. Assume the argument lacks punctuation.
def word_lengths(str)
  lengths ={}

  str.split.each do |word|
    lengths[word] = word.length
  end

  lengths

end

# Define a method that, given a hash with integers as values, returns the key with the largest value.
def greatest_key_by_val(hash)
 hash.sort_by {|k, v| v }[-1][0]

end

# Define a method that accepts two hashes as arguments: an older inventory and a newer one. The method should update keys in the older inventory with values from the newer one as well as add new key-value pairs to the older inventory. The method should return the older inventory as a result.
# march = {rubies: 10, emeralds: 14, diamonds: 2}
# april = {emeralds: 27, moonstones: 5}
# update_inventory(march, april) => {rubies: 10, emeralds: 27, diamonds: 2, moonstones: 5}
def update_inventory(older, newer)
  #iterate through newer inventory and update older inventorys values and add new items to inventory

  newer.each do |k, v|
    older[k] = v
  end

  older


end

# Define a method that, given a word, returns a hash with the letters in the word as keys and the frequencies of the letters as values.  the counts of each letter
def letter_counts(word)
  counts = Hash.new(0)

  word.chars do |letter|
    counts[letter] += 1
  end

  counts


end


# MEDIUM

# Define a method that, given an array, returns its argument without duplicates. Use a hash! Don't use the uniq method.
def uniq(arr)
  frequencies = Hash.new(0)

  arr.each do |el|
    frequencies[el] += 1
  end

  frequencies.select {|k,v| v = 1 }.keys


end

# Define a method that, given an array of numbers, returns a hash with "even" and "odd" as keys and the frequency of each parity as values.
def evens_and_odds(numbers)
  frequencies = {"even" => 0, "odd" => 0 }

  numbers.each do |el|
    if el.even?
      frequencies["even"] += 1
    else
      frequencies["odd"] += 1
    end
  end

  frequencies


end

# Define a method that, given a string, returns the most common vowel. If there's a tie, return the vowel that occurs earlier in the alphabet. Assume all letters are lower case.
def most_common_vowel(string)
  vowel_freq = {"a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0 }

  string.downcase.chars do |letter|
    if vowel_freq.include?(letter)
      vowel_freq[letter] += 1
    end
  end



end


# HARD

# Define a method that, given a hash with keys as student names and values as their birthday months (numerically, e.g., 1 corresponds to January), returns every combination of students whose birthdays fall in the second half of the year (months 7-12).
# students_with_birthdays = {
#   "Asher" => 6,
#   "Bertie" => 11,
#   "Dottie" => 8,
#   "Warren" => 9
# }
# fall_and_winter_birthdays(students_with_birthdays) => [
#   ["Bertie", "Dottie"],
#   ["Bertie", "Warren"],
#   ["Dottie", "Warren"]
# ]
def fall_and_winter_birthdays(students_with_birthdays)
  second_half = students_with_birthdays.select {|k,v| v > 6 }

  combinations =[]

  names = second_half.keys

  idx = 0
  while idx < names.length - 1
    idx2 = idx + 1
    while idx2 < names.length
      combinations << [names[idx], names[idx2]]
      idx2 +=1
    end
    idx += 1
  end

  combinations


end

# Define a method that, given an array of specimens, returns the biodiversity index as defined by the following formula:
# number_of_species**2 * smallest_population_size / largest_population_size
# biodiversity_index(["cat", "cat", "cat"]) => 1
# biodiversity_index(["cat", "leopard-spotted ferret", "dog"]) => 9
def biodiversity_index(specimens)
  species = Hash.new(0)

  specimens.each do |el|
    species[el] += 1
  end

  num_species = species.length
  smallest_pop = species.sort_by {|k, v| v }[0][-1]
  largest_pop = species.sort_by {|k, v| v } [-1][-1]

  index = num_species ** 2 * smallest_pop / largest_pop

end

# Define a method that, given the string of a respectable business sign, returns a boolean indicating whether pranksters can make a given vandalized string using the available letters. Ignore capitalization and punctuation.
# can_tweak_sign("We're having a yellow ferret sale for a good cause over at the pet shop!", "Leopard ferrets forever yo") => true
def can_tweak_sign?(normal_sign, vandalized_sign)
  normal_count = character_count(normal_sign)
  vandalized_count = character_count(vandalized_sign)

  normal_count.all? {|k, v| normal_count[k] >= vandalized_count[k] }


end

def character_count(str)
  str.delete!(",.?!'")

  counts = Hash.new(0)

  str.downcase.chars do |letter|
    counts[letter] += 1
  end

  counts

end
