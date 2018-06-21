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
#*****************Extra Practice************************
#"m1i2s1i2s1i2p1i" # mississippi 
def find(string)
  empty_str = string.slice!(0) # takes away the 'm'
  current_num = 0
  i = 0
  until i == string.length #@4  i = 3 
    if string[i] =~ /[0-9]/#@1 '1'
      current_num = string[i].to_i#@3 current numb = 2
    elsif string[i] =~ /[a-z]/#@4 's'
      empty_str += (string[i] * current_num)
    end
    i += 1
  end
  empty_str
end
 find("m1i2s1i2s1i2p1i")



