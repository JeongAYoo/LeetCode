class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let distinct1 = Set(nums1).subtracting(nums2)
        let distinct2 = Set(nums2).subtracting(nums1)

        return [Array(distinct1), Array(distinct2)]
    }
}