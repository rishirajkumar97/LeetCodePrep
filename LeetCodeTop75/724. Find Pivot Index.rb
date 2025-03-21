# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  sum = nums.sum
  pivot = 0
  left_sum = 0
  while pivot < nums.length do
      if (sum - nums[pivot]) == left_sum
          return pivot
      end
      left_sum += nums[pivot]
      sum -= nums[pivot]
      pivot+=1
  end
  return -1
end