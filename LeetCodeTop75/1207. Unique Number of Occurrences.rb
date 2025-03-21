# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  map = arr.tally
  puts(map)
  set = Set.new()
  map.each do |key,value|
      if set.include?(value)
          return false
      else
          set << value
      end
  end
  return true
end