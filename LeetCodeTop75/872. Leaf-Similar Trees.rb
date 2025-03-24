# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  get_leaf_node_list(root1) == get_leaf_node_list(root2)
end


def get_leaf_node_list(root)
  return [] if root.nil?
  list = []
  stack = []
  stack << root
  while !stack.empty? do
      element = stack.pop
     stack << element.right if element.right != nil

     stack << element.left if element.left != nil

     list.push(element.val) if element.left.nil? && element.right.nil?
  end

  return list
end