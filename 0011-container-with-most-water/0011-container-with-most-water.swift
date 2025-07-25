class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea: Int = 0
        var left: Int = 0
        var right: Int = height.count - 1

        while left < right {
            maxArea = max(maxArea, (right - left) * min(height[left], height[right]))

            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return maxArea
    }
}