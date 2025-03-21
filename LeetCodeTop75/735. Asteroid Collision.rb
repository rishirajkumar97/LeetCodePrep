# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  stack = []
  asteroids.each do |i|
      stack.push(i) && next if i.positive?
      
      stack.pop while !stack.empty? && stack[-1].positive? && stack[-1] < i.abs

      if stack[-1] == i.abs
          stack.pop
      elsif stack.empty? || stack[-1].negative?
          stack.push(i)
      end
  end
  stack
end
