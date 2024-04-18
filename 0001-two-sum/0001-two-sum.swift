class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // hash map
        var dict = [Int: Int]()

        // get both index and value
        for (index, num) in nums.enumerated() {
            if let diff = dict[num] {
                return [diff, index]
            } else {
                // 합이 target이 될 숫자 == target - 현재 숫자
                dict[target - num] = index
            }
        }

        return []
    }
}