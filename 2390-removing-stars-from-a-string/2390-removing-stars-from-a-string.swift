class Solution {
    func removeStars(_ s: String) -> String {
        var newString: [Character] = []

        for char in s {
            if char == "*" {
                newString.removeLast()
            } else {
                newString.append(char)
            }
        }

        return String(newString)
    }
}