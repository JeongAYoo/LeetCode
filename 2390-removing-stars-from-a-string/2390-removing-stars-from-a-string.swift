class Solution {
    func removeStars(_ s: String) -> String {
        var newString: String = ""

        for char in s {
            if char == "*" {
                newString.removeLast()
            } else {
                newString.append(char)
            }
        }

        return newString
    }
}