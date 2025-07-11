class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sumLeft: [Int] = [0]
        var sumRight: [Int] = [nums.reduce(0, +) - nums[0]]

        for i in 1..<nums.count {
            sumLeft.append(sumLeft[i-1] + nums[i-1])
            sumRight.append(sumRight[i-1] - nums[i])
        }

        for j in 0..<nums.count {
            if sumLeft[j] == sumRight[j] {
                return j
            }
        }
        return -1
    }
}