# https://leetcode.com/problems/unique-morse-code-words/description/

# International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.
#
# For convenience, the full table for the 26 letters of the English alphabet is given below:
#
# [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
# Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cab" can be written as "-.-.-....-", (which is the concatenation "-.-." + "-..." + ".-"). We'll call such a concatenation, the transformation of a word.
#
# Return the number of different transformations among all words we have.
#
# Example:
# Input: words = ["gin", "zen", "gig", "msg"]
# Output: 2
# Explanation:
# The transformation of each word is:
# "gin" -> "--...-."
# "zen" -> "--...-."
# "gig" -> "--...--."
# "msg" -> "--...--."
#
# There are 2 different transformations, "--...-." and "--...--.".

# @param {String[]} words
# @return {Integer}
require 'set'

MORSE_CODE_ALPHABET = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
def unique_morse_representations(words)
    translated_words = Set.new
    words.each do |word|
        translation = word.chars.map {|c| MORSE_CODE_ALPHABET[c.ord - 'a'.ord]}.join
        translated_words.add(translation)
    end
    translated_words.length
end
