# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    prefix_prod = 1
    suffix_prod = 1 
    prefix_product = []
    suffix_product = []
    j = nums.length - 1
    for i in 0..nums.length-1 do
        prefix_product.push(prefix_prod)
        suffix_product.push(suffix_prod)
        prefix_prod = prefix_prod * nums[i]
        suffix_prod = suffix_prod * nums[j]
        j = j-1
    end
    puts(prefix_product)
    puts(suffix_product)
    op = []
    for i in 0..nums.length-1 do
        op.push(prefix_product[i] * suffix_product[nums.length-1-i])
    end
    return op
end