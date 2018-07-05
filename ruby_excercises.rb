# # MEDIUM

# # Define a method that returns an array of letters that do not occur in the method's argument.
# # input = string 
# # output = array 

# # We want to interate trough the input string and keep track of the characters that appear.
# # we can do that by deleting the characters from a pre built abc array 
# # and we will return that array.

# def missing_letters(string)
# alpha_arr = ("a".."z").to_a
# #split_string_arr = string.split('')

#   string.each_char do |character|
#     if alpha_arr.include?(character)
#        alpha_arr.delete(character)
#     end 
#   end 
#   alpha_arr
# end
# #********** I will be using the select method to solve this problem******************
# def missing_letters(string)
# alpha_arr = ('a'..'z').to_a
# split_string_arr = string.split("")
# alpha_arr.select {|character| split_string_arr.include?(character) == false}

  
# end
# missing_letters('string')
# #********** I will be using the reject method to solve this problem******************
# def missing_letters(string)
# alpha_arr = ('a'..'z').to_a
# split_string_arr = string.split("")
# alpha_arr.reject {|character| split_string_arr.include?(character)}

  
# end
# missing_letters('abc')

#***************** I want to be able to grab every third element in this array using the select with index method.***************************************************
array = [1,2,3,4,5,6,7,8]
#empty_arr = []
empty_arr = array.select.with_index do |number, index|

p "number: #{number}, array[index + 1]:#{array[index + 1]}"
  (index + 1) % 3 == 0 #@3 idx = 3 here is where the magic all happens.
end
empty_arr
################################****************************************************************************
############################
def reverse_word(string)
  idx = 0 
  answer_str = ""
    while idx < string.length 
      current_ch = string[idx]
      answer_str = current_ch + answer_str
    idx += 1
    end
    answer_str 
end
reverse_word('abc')
##############################
def factorial(integer)
  answer = 1 
  until integer == 0
    answer = integer * answer
    integer -= 1
  end 
  answer
end 
factorial(4)
#################################
def longest_word(sentence)
  words_arr = sentence.split(" ")
  longest_word_str = nil 
  idx = 0 
    while idx < words_arr.length
      current_word_str = words_arr[idx]
      if longest_word_str == nil 
        longest_word_str = current_word_str
      elsif longest_word_str.length < current_word_str.length 
        longest_word_str = current_word_str
      end 
    idx += 1
    end 
  longest_word_str
end 
longest_word("apples and oranges are the way to independance")
#############################################

def sum_nums(integer)
  answer = 0 
  (1..integer).each do |number| 
    answer = number + answer 
  end
  answer 
end 
sum_nums(5)
################################################
def minutes(integer)
  hours = 0 
  while integer > 59
    hours += 1
    integer -= 60
  end 

  if integer >= 10
  minutes_str = integer.to_s 
  elsif integer < 10 
  minutes_str = "0" + integer.to_s
  end 

  return hours.to_s + ":" + minutes_str
end 
minutes(120)
################################################

def count_vowels(string)
  vowel_str = "aeiou"
  counter = 0 
  string.each_char do |character|
    if vowel_str.include?(character)
      counter += 1
    end
  end
  counter 
end 
count_vowels("string and apples")
#######################################
def palindrome?(string)
  idx = 0 
  reversed_str = ""
  while idx < string.length
    current_ch = string[idx]
    reversed_str =  current_ch + reversed_str
  idx += 1
  end

  if reversed_str == string
    return true
  else 
    return false 
  end 
end 
palindrome?('aaba')
##########################################
# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def az?(string)
  idx = 0
  while idx < string.length
    current_ch = string[idx]
    if current_ch == "a" && string[idx..idx + 3].include?("z")
      return true
    end 
    idx += 1
  end
  false  
end 
az?('abbbz')
###########################################
def sum_nums(numbers)
  idx = 0
  while idx < numbers.length
    first_num_int = numbers[idx]
    idx2 = 0 
    idx2 = idx + 1
      while idx2 < numbers.length
        second_num_int = numbers[idx2]
         if first_num_int + second_num_int == 0
          return [idx,idx2]
         end 
        idx2 += 1
      end 
    idx += 1
  end
  nil  
end 
sum_nums([1,2,3,4,5,6,-3])
###############################################
def is_power(integer)
  
  until integer == 0 
    
    if integer == 1
      return true
    elsif integer % 2 == 0 
      integer = integer / 2 
    elsif integer % 2 != 0
      return false 
    end   
  end 
  false 

end 
is_power(256)
###############################################
def third_greatest(numbers)
  first = nil 
  second = nil 
  third = nil 
  flag = true
  idx = 0 
  while flag 
    
    current_value = numbers[idx] #[1,3,1,2]@ 2 first = 1 second =  third  = 
    

      if first == nil || current_value > first
      third = second
      second = first  
      first = current_value  
      

      elsif second == nil || current_value > second 
      third = second  
      second = current_value
      
      
      elsif third == nil || current_value > third 
      third = current_value 
      
      end 
    flag = false if idx == numbers.length - 1
    idx += 1   
  end
 
  third 
end

third_greatest([2,3,4,5,2,4,2,3,4,7,6,9,5,4,7,3])
####################################
# I will use an enumerable and also a while loop
# enumerable & while method
def most_common_letter(string)
  counter = 0 
  sub_set_arr = []
  idx = 0 

  while idx < string.length 
    current_character = string[idx]
    idx2 = 0 
    idx2 = idx + 1
    counter = 0
    counter += 1 

    while idx2 < string.length 
      second_character = string[idx2]
      if current_character == second_character
          counter += 1
      end  
        idx2 += 1
    end
    sub_set_arr << [current_character, counter]
    idx += 1
  end 
  sub_set_arr.each do |array|
    
    sub_set_arr.each_with_index do |character,index|
    character_element = character[0]
    number_element = character[1]
      if array[0] == character_element && array[1] > number_element
        sub_set_arr.delete(sub_set_arr[index])
      
      end 
    end   
  end
  answer = nil 
  sub_set_arr.each_with_index do |array, index|
    track_highest_int = array[1]
    if answer == nil 
    answer = sub_set_arr[index]
    elsif track_highest_int > answer[1]
    answer = sub_set_arr[index]
    end 

  end 
  answer
end 
most_common_letter("abbab")
############################################
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#

def dasherize_number(number) #1334
number_arr_str = number.to_s.chars
idx = 0 
result = ""
  while idx < number_arr_str.length
    current_character = number_arr_str[idx]
    # p "currently what is being held #{idx}"
    # p "what is the current character #{current_character}"
    # p "what is the logical #{current_character} != #{number_arr_str[0]}"
    if idx > 0 
      previous_character = number_arr_str[idx - 1]
      if current_character.to_i.odd? == true || previous_character.to_i.odd? == true 
        # p "are we ever in here?"
        result += "-"
        
      end
    end    
    result += current_character
    idx += 1
  end 
  result
end 

dasherize_number(203)

################################
# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(sentence)
  word_arr = sentence.split(" ")
  idx = 0 
  answer_arr = []
  while idx < word_arr.length 
    current_word_str = word_arr[idx]
    idx2 = 0
    new_str = ""
      while idx2 < current_word_str.length 
        current_character = current_word_str[idx2]
          if idx2 == 0 
            new_str = new_str + current_word_str[idx2].upcase
          else 
            new_str = new_str + current_character
          end 
        idx2 += 1
      end
    answer_arr << new_str
    # p "what is in the answer_arr #{answer_arr}"
    idx += 1
  end
  answer_arr.join(" ")
end 
capitalize_words("this is a sentence")
capitalize_words("apples and oranges")
# puts(
#   'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
#   (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
# )
# puts(
#   'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
#   (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
# )
####################################################################################
# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, array)
  character_arr = string.chars
  new_str = ''
  idx = 0
  while idx < array.length
    grabbed_integer = array[idx]
    new_str = new_str + character_arr[grabbed_integer]
    idx += 1
  end
  new_str
end
scramble_string("abcd", [3, 1, 2, 0])

# puts(
#   'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
#   (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
# )
#######################################################################

# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.
def is_prime?(integer)
  if integer == 2
    return true
  end 
  (2...integer).each do |number|#9 @ 2 (2..8)
    p number 
    if integer % number == 0 #(9 % 3) == 0 ? remainder = 1 F
    p integer % number
    return false
    end     
  end
  true
end
is_prime?(2)
# puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
# puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
# puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
# puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
###################################################################
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.
def is_prime(number)
  return false if number <= 1

  (2...number).each do |int|
    if number % int == 0
      return false
    end   
  end
  true 
end
# we want to count up with the counter to match an integer and return the current prime. Forwever while true loop
def nth_prime(integer) # 2
  counter = 0 
  prime_number = 2 # first is always 2
  while true 
    if is_prime(prime_number) == true #(true) == true
      counter += 1
      if counter == integer#@1 1 == 2
        return prime_number
      end
    end
    prime_number += 1
  end   
end 

# puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
# puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
# puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
# puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
# puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
#################################################

# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.
def greatest_common_factor(int1,int2)
  bigger_int = 0
  smaller_int = 0
    if int1 > int2
      bigger_int = int1
      smaller_int = int2 
    else 
      bigger_int = int2
      smaller_int = int1
    end
  p   
  bigger_arr = (1..bigger_int).to_a.reverse#[24,23,22,21,19] 
  smaller_arr = (1..smaller_int).to_a.reverse 
    bigger_arr.each do |big_integer|
      # p "what is our biggest integer #{big_integer}"
      smaller_arr.each do |small_integer|
      # p "what is our smallest integer #{small_integer}"
        if big_integer % small_integer == 0 && smaller_int % small_integer == 0
          return small_integer
        end 
      end
    end 
      
end

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
