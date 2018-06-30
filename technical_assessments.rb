# Anagrams are two words with exactly the same letters. Order does not matter. Define a method that, given two strings, returns a boolean indicating whether they are anagrams.
def anagrams?(str1, str2)
  str1_array_int = []
  str2_array_int = []
  str1_character_arr = str1.chars
  str2_character_arr = str2.chars
  str1_character_arr.each do |fcharacters|
    counted = 0
    counted = str1_character_arr.count(fcharacters)
    str1_array_int << counted
  end
  str2_character_arr.each do |scharacters|
    counted = 0
    counted = str2_character_arr.count(scharacters)
    str2_array_int << counted
  end
  if str1_array_int.sort == str2_array_int.sort
    return true
  else 
    false
  end 

end

# An isogram is a word of only non-repeating letters. Define a method that, given two isograms of the same length, returns an array of two elements indicating matches: the first number is the number of letters matched in both words at the same position, and the second is the number of letters matched in both words but not in the same position.
def isogram_matcher(isogram1, isogram2)# "arc" "ora"
iso1_char_arr = isogram1.chars
iso2_char_arr = isogram2.chars
idxcounter = 0 
charcounter = 0
  isogram1.each_char do |characters|
    if iso2_char_arr.include?(characters)
      charcounter += 1
    end 
  end
  isogram1.each_char.with_index do |characters, index|
    if iso2_char_arr[index] == characters
      idxcounter += 1
    end 
  end  
  return [idxcounter,charcounter]
end

# You have a panoramic view in front of you, but you only can take a picture of two landmarks at a time (your camera is small). You want to capture every pair of landmarks that are next to each other. Define a method that, given an array of landmarks, returns an array of every adjacent pair from left to right. Assume the panorama wraps around.
def panoramic_pairs(landmarks)
  landmarks_seperated = landmarks
  idx = 0 
  idx2 = 0
  answer_arr = []
  while idx < landmarks_seperated.length
    idx2 = idx + 1 
    if idx2 == landmarks_seperated.length
      idx2 = 0
    end
    current_landmark = landmarks_seperated[idx]    
    second_landmark = landmarks_seperated[idx2]
    answer_arr << [current_landmark,second_landmark]
            
    idx += 1
  end 
  answer_arr
end
# Xbonacci

# Define a Xbonacci method that works similarly to the fibonacci sequence.
# The fibonacci sequence takes the previous two numbers in the sequence and adds
# them together to create the next number.
#
# First five fibonacci numbers = [1, 1, 2, 3, 5]
# The fourth fibonacci number (3) is the sum of the two numbers before it
# (1 and 2).
#
# In Xbonacci, the sum of the previous X numbers (instead of the previous 2 numbers)
# of the sequence becomes the next number in the sequence.
#
# The method will take two arguments: the starting sequence with X number of
# elements and an integer N. The method will return the first N elements in the given
# sequence.
#
# xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
# xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
#
# X is the length of the starting sequence.
#
# number_of_xbonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)
  counter = starting_sequence.length 
  end_counter = 0 
  while true
    sum_tracker = [] 
    starting_sequence[-counter..-1].each do |numbers|
    
      sum_tracker << numbers
    end
    starting_sequence << sum_tracker.reduce(:+)
    end_counter += 1
    return starting_sequence[0...number_of_xbonacci_numbers_to_return] if number_of_xbonacci_numbers_to_return == end_counter
  end 
end
