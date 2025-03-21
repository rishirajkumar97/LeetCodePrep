# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  start = 0
  max = 0
  gain.each do |g|
      puts start
      start = start + g
      max = [max, start].max 
  end 
  return max
end