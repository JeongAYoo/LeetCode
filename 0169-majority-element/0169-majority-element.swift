class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            if let count = dict[num] {
                dict[num] = count + 1
            } else {
                dict[num] = 1
            }
        }
        let max = dict.max {
            $0.value < $1.value
        }

        return max!.key
    }
}