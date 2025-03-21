# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  if word1.length != word2.length
      return false # base case when differing lengths are given
  end

  map1 =  word1.chars.tally
  map2 =  word2.chars.tally


  if map1 == map2 # if two maps are equal means that they can be achieved by any number of operation 1
      return true
  end

  return map1.keys.sort == map2.keys.sort && map1.values.sort == map2.values.sort
  # Logic for Operation 2
end