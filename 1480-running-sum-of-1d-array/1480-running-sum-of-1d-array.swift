class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSumArray: [Int] = []

        for i in 0..<nums.count {
            runningSumArray.append(nums[...i].reduce(0, +))
        }

        return runningSumArray
    }
}