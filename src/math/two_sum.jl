function two_sum(nums, target::Integer)
	for (i, first) in enumerate(nums)
		diff = target - first
		diff ∈ nums && return (i, findlast(==(diff),nums))
	end
	return ()
end

