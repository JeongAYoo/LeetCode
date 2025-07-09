class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var min = Int.max
        var mid = Int.max

        for num in nums where nums.count >= 3 {
            if num <= min {
                min = num
            } else if num <= mid {
                mid = num
            } else {
                return true
            }
        }
        
        return false
    }
}