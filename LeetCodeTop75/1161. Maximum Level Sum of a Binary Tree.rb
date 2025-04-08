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
def max_level_sum(root)
  curr_level_sum = 0
  q = Queue.new()
  q.push(root)
  max_val = -Float::INFINITY
  max_level = 0
  level = 0
  while !q.empty? do
      curr_level_sum = 0
      level += 1
      q.size.times do
          n = q.shift()
          curr_level_sum += n.val
          q.push(n.left) if n.left
          q.push(n.right) if n.right
      end

     if  max_val < curr_level_sum
      max_level = level
      max_val = curr_level_sum
     end

  end
  max_level
end