# https://leetcode.com/problems/add-two-numbers/description/
#
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
# Example
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    root = head = ListNode.new(nil)
    carry = 0
    while l1 || l2 || carry > 0
        sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry
        carry = sum / 10
        head.next = ListNode.new(sum % 10)
        l1 = l1.next if l1
        l2 = l2.next if l2
        head = head.next
    end
    root.next
end

# Carry case for [5], [5] to get [0, 1] involved need to refactor
