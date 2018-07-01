# Write a function to find the longest common prefix string amongst an array of strings.
# ["flower","flow","flight"]
# Output: "fl"

#If there is no common prefix, return an empty string "".
def longest_common_prefix (array)
    idx = 0
    answer_str = ""
    is_true = false
    while idx < array[0].length
        idx2 = 0
        current_letter = array[0][idx]#@1 "f"
        while idx2 < array.length #@3 idx2 = 2 
            if array[idx2].include?(answer_str + current_letter) # @3 "flight".include?("f")
                is_true = true
            else
                is_true = false
                break
            end
            if is_true == true # true == true
                answer_str += current_letter
            end
            answer += current_letter
            idx2 += 1
        end
        idx += 1
    end 
end
