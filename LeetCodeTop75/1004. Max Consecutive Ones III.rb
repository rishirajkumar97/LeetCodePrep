# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  zeros = 0
  left = 0
  right = 0
  max = 0
  while right < nums.length do
    if nums[right] == 0
      zeros +=1
    end
    while zeros > k do
      if nums[left] == 0
        zeros -= 1
      end
      left += 1
    end
    max = [max,right - left + 1].max
    right += 1
  end
  return max
end