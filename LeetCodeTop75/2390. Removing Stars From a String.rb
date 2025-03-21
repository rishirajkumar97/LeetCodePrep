# @param {String} s
# @return {String}
def remove_stars(s)
  stack = []
  s.chars.each do |c|
      if c != '*'
          stack << c
      else
          stack.pop
      end
  end

  stack.join
end