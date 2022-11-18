"""
	two_sum(nums::AbstractVector{<:Integer}, target::Integer)

Given an array of integers, return indices of the two numbers such that they add up to
a specific target.

You may assume that each input would have exactly one solution, and you may not use the
same element twice.

# Example:

```
nums = [2, 7, 11, 15]
target = 9

two_sum(nums, target)

# Output, because nums[1] + nums[2] = 2 + 7 = 9
(1, 2) 
```

"""
function two_sum(nums::AbstractVector{<:Integer}, target::Integer)
    for (i, first) in enumerate(nums)
        diff = target - first
        diff ∈ nums && return (i, findlast(==(diff), nums))
    end
    return ()
end
