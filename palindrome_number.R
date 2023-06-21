# 9. Palindrome Number
# Given an integer x, return true if x is a palindrome, and false otherwise.
# palindrome def: An integer is a palindrome when it reads the same forward and backward.
# For example, 121 is a palindrome while 123 is not.

is_palindrome <- function(x){
  x <- as.character(x)
  chars <- unlist(strsplit(x, ""))
  reversed <- Reduce(function(x, y) paste0(x, y), x=rev(chars))
  if(x == reversed) return(T)
  else return(F)
}

# test 1
x <- 121

is_palindrome(x)
# [1] TRUE

# test 2
x <- -121

is_palindrome(x)
# [1] FALSE

# test 3
x <- 10

is_palindrome(x)
# [1] FALSE
