# 1. Two Sum
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# 
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# 
# You can return the answer in any order.

two_sum <- function(nums, target){
  for(i in c(1:length(nums))){
    for (j in c((i+1):length(nums))){
      if (nums[i] + nums[j] == target) return(c(i, j))
    }
  }
}

# test with example 1
nums <- c(2, 7, 11, 15)
target <- 9

two_sum(nums, target)
# [1] 1 2

# test with example 2
nums <- c(3,2,4)
target <- 6

two_sum(nums, target)
# [1] 2 3

# test with example 3
nums <- c(3,3)
target <- 6

two_sum(nums, target)
# [1] 1 2

