# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
  return [] if root.nil?
  queue  = Queue.new()
  queue.push(root)
  result = []
  while !queue.empty? do
      
      level_size = queue.size
      right_element = nil
      level_size.times do 
          node = queue.pop
          right_element = node.val
          queue.push(node.left) if node.left
          queue.push(node.right) if node.right
      end
      result << right_element
  end
  result
end