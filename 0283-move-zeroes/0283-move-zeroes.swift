class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for i in 0..<nums.count {
            if nums[i] == 0 {
                let zero = nums.remove(at: i)
                nums.append(zero)
            }
        }
    }
}