def path_sum(root, target_sum)
  return 0 unless root
  
  @num_paths = 0
  
  queue = [root]
  while !queue.empty?
    node = queue.shift
    dfs(node, target_sum)
    
    queue.append(node.left) if node.left
    queue.append(node.right) if node.right
  end

  @num_paths
end

def dfs(node, target_sum)
  target_sum -= node.val
  @num_paths += 1 if target_sum.zero?
  
  dfs(node.left, target_sum) if node.left
  dfs(node.right, target_sum) if node.right
end