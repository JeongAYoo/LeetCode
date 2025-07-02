class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var maxSum: Int = Int.min

        for i in 0..<nums.count-k+1 {
            let sum = nums[i..<i+k].reduce(0, +)
            maxSum = max(maxSum, sum)
        }

        return Double(maxSum) / Double(k)
    }
}