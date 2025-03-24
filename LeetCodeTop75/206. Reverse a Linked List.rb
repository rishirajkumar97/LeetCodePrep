# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  temp = nil
  while head do
      prev = head
      head = head.next
      prev.next = temp
      temp = prev
  end
  prev
end