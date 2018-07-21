# https://leetcode.com/problems/judge-route-circle/description/
#
# Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
#
# The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
#
# Example 1:
# Input: "UD"
# Output: true
# Example 2:
# Input: "LL"
# Output: false

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    x, y = 0, 0
    moves.each_char do |move|
        case move
            when "U"
                y += 1
            when "D"
                y -= 1
            when "L"
                x -= 1
            when "R"
                x += 1
        end
    end
    return x == 0 && y == 0
end
