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
def delete_middle(head)
  return head if head == nil

  return nil if head.next == nil
  
  slow = head
  fast =head.next
  while fast&.next&.next != nil do
      fast = fast.next.next
      slow = slow.next
  end
  
  temp = slow&.next&.next
  slow&.next = temp

  return head
end