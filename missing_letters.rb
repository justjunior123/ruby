# MEDIUM

# Define a method that returns an array of letters that do not occur in the method's argument.
# input = string 
# output = array 

# We want to interate trough the input string and keep track of the characters that appear.
# we can do that by deleting the characters from a pre built abc array 
# and we will return that array.


def missing_letters(string)
alpha_arr = ("a".."z").to_a
#split_string_arr = string.split('')

  string.each_char do |character|
    if alpha_arr.include?(character)
       alpha_arr.delete(character)
    end 
  end 
  alpha_arr
end
missing_letters('string')
