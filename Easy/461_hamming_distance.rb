# https://leetcode.com/problems/hamming-distance/description/

# The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
#
# Given two integers x and y, calculate the Hamming distance.
#
# Note:
# 0 ≤ x, y < 231.
#
# Example:
#
# Input: x = 1, y = 4
#
# Output: 2
#
# Explanation:
# 1   (0 0 0 1)
# 4   (0 1 0 0)
#        ↑   ↑
#
# The above arrows point to positions where the corresponding bits are different.

# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    (x^y).to_s(2).count("1")
end

# x ^ y is the bitwise XOR which will give us the bits that are different in x/y
# Integer#to_s in ruby can take an argument for base. 2 => binary
# We count the 1s which will be the positions where 1 and 0 differed in bit rep
