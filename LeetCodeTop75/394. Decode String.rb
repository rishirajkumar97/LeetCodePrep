# @param {String} s
# @return {String}
def decode_string(s)
  stack = []
  i = 0
  while i < s.length do
      if s[i] != ']'
          stack << s[i]
      elsif s[i] == ']'
          curr_string = []
          while !stack.empty? && stack.last != '[' do
              curr_string << stack.pop
          end
          stack.pop # pop [
          repeat = []
          while stack.empty? == false && stack.last.match?(/\d/) do
              repeat << stack.pop
          end
          repeat = repeat.reverse.join.to_i
          curr_string = curr_string.reverse
          curr_string = curr_string * repeat
          curr_string.each do |c|
              stack << c
          end
      end

      i+=1
  end

  stack.join
end