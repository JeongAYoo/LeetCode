class Solution {
    func reverseWords(_ s: String) -> String {
        var str = s
        return str.split(separator: " ").reversed().map { String($0) }.joined(separator: " ")
    }
}