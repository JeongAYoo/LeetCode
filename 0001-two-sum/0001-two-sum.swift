class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // hash map
        var dict = [Int: Int]()

        // get both index and value
        for (index, num) in nums.enumerated() {
            // 딕셔너리에 값이 이미 존재한다면
            if let firstIndex = dict[num] {
                return [firstIndex, index]
            } else {
                // 합이 target이 될 숫자 == target - 현재 숫자
                dict[target - num] = index
            }
        }

        return []
    }
}