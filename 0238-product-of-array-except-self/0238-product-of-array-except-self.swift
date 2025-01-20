class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let zeroCount = nums.filter { $0 == 0 }.count
        let product = nums.filter { $0 != 0 }.reduce(1, *)

        if zeroCount > 1 {
            return Array(repeating: 0, count: nums.count)
        } else if zeroCount == 1 {
            return nums.map { $0 == 0 ? product : 0 }
        } else {
            return nums.map { product / $0 }
        }
    }
}