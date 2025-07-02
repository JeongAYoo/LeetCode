class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        let nums = nums.map { Double($0) }
        var maxAvg: Double = 0

        for i in 0..<nums.count-k+1 {
            let avg = nums[i..<i+k].reduce(0, +) / Double(k)

            if i == 0 {
                maxAvg = avg
                continue;
            }

            if maxAvg < avg {
                maxAvg = avg
            }
        }

        return maxAvg
    }
}