# @param {Integer[]} nums
# @return {Integer}
def max_sum(nums)
    all_negative = true
    set = Set.new
    max = -Float::INFINITY
    nums.each do |n|
        if n < 0 && all_negative
            max = [max,n].max
        elsif n >=0
            if all_negative
                all_negative = false
                max = n
                set << n
            else
                if !set.include?(n)
                    set << n
                    max = max + n
                end
            end
        end
    end

    return max
end