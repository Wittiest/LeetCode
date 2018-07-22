# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
#
# Given a string, find the length of the longest substring without repeating characters.
#
# Examples:
#
# Given "abcabcbb", the answer is "abc", which the length is 3.
#
# Given "bbbbb", the answer is "b", with the length of 1.
#
# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

# @param {String} s
# @return {Integer}
def max_num(i, j)
    return i if i > j
    j
end

def length_of_longest_substring(s)
  hsh = Hash.new
  max = 0
  j = 0
  s.chars.each_with_index do |el, i|
      j = max_num(j, hsh[el] + 1) if (hsh.has_key?(el))
      hsh[el] = i
      max = max_num(max, i - j + 1)
      i += 1
  end
  max
end
# create a hash where hsh[char] = last_seen_index_of_cjar
# iterate string, setting j to max (j || last seen of current el)
# set max to biggest of max or difference between occurences of current char
