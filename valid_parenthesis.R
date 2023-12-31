# 20 Valid Parenthesis

# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# 
# An input string is valid if:
#   
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
# Example 1:
#   
#   Input: s = "()"
#   Output: true
#   Example 2:
#     
#   Input: s = "()[]{}"
#   Output: true
#   Example 3:
#     
#   Input: s = "(]"
#   Output: false
#   
#   
#   Constraints:
#     
#   1 <= s.length <= 104
#   s consists of parentheses only '()[]{}'.

valid_parenthesis <- function(string){
  parenthesis <- c(`{` = "}", `(` = ")", `[` = "]")
  string_split <- strsplit(string, split="")[[1]]
  
  stack <- c()
  for(char in string_split){
    
    if(char %in% names(parenthesis)){
      stack <- append(stack, char)
    } else{
      if(is.null(stack)){
        return(FALSE)
      } else{
        current_opening <- stack[[length(stack)]]
        stack <- c()
        
        if(char != parenthesis[current_opening]){
          return(FALSE)
        }
      }
    }
  }
  
  return(is.null(stack))
}

# test 1
valid_parenthesis("[)")

# test 2
valid_parenthesis("[]()")

# test 3
valid_parenthesis("[][[]") # returns TRUE?

# 2nd approach
valid_parenthesis2 <- function(string){
  parenthesis <- c(`{` = "}", `(` = ")", `[` = "]")
  s_split <- strsplit(string, split="")[[1]]

  for(i in 1:length(s_split)){
    if (s_split[i] %in% names(parenthesis)){
      if(s_split[i+1] != parenthesis[s_split[i]]){
        return(FALSE)
      } else if(s_split[i+1] == s_split[i]){
        return(FALSE)
      } else{
        return(TRUE)
      }
    }
  }
  
}

# test 1
valid_parenthesis2("[)(]")

# test 2
valid_parenthesis2("[](){}")

# test 3
valid_parenthesis2("[][[]")
valid_parenthesis2("[{]]})(")


