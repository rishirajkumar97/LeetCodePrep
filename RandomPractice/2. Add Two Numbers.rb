# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    temp1 = l1
    temp2 = l2
    if l2 == nil
        return l1
    elsif l1 == nil
        return l2
    end
    op = nil
    curr = op
    div = 0
    while(l1 != nil && l2 != nil) do
        if curr == nil
            op = curr = ListNode.new()
        else
            curr.next = ListNode.new()
            curr = curr.next
        end
        sum = l1.val + l2.val + div
        rem = sum%10
        curr.val = rem
        div = sum/10

        # move l1 , move l2
        l1 = l1.next
        l2 = l2.next
        # move current list to next
    end 
    if div > 0 && l1 == nil && l2 == nil
        while div > 0
            curr.next = ListNode.new()
            curr = curr.next
            val = div % 10
            div = div/10
            curr.val = val
        end
    elsif (l1 != nil && l2 == nil)
        while l1 != nil do
            sum = l1.val + div
            rem = sum%10
            curr.next = ListNode.new()
            curr = curr.next
            curr.val = rem
            div = sum/10
            
            l1 = l1.next
        end
        if div > 0
            curr.next = ListNode.new()
            curr = curr.next
            curr.val = div
        end
    elsif (l2 != nil && l1 == nil)
        while l2 != nil do
            sum = l2.val + div
            rem = sum%10
            curr.next = ListNode.new()
            curr = curr.next
            curr.val = rem
            div = sum/10
            
            l2 = l2.next
        end
        if div > 0
            curr.next = ListNode.new()
            curr = curr.next
            curr.val = div
        end
    end
    op
end