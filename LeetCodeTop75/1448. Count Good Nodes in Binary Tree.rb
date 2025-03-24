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
# @return {Integer}
def good_nodes(root)
  return 0 if root.nil?

  op = 0
  stack = []
  stack << [root, root.val]
  while !stack.empty? do
      element, val = stack.pop
      if  val <= element.val
          op+=1;
          val = [element.val, val].max
      end
      stack << [element.left,val] if element.left != nil
      stack << [element.right,val] if element.right != nil
  end
  # puts op
  return op
end