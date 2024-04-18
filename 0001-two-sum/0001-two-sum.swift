class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var first = 0
        var second = 0

        for i in 0..<nums.count {
            var newTarget = target - nums[i]
            for j in i+1..<nums.count {
                if nums[j] == newTarget {
                    first = i
                    second = j
                }
            }
        }

        return [first, second]
    }
}