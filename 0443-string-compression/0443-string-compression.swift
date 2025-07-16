class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var output: String = ""
        var count: Int = 0
        var last: Character?

        for char in chars {
            if let last, last == char {
                count += 1
            } else {
                if count > 1 {
                    output.append("\(count)")
                }

                output.append(char)
                last = char
                count = 1
            }
        }

        if count > 1 {
            output.append("\(count)")
        }

        chars = Array(output)
        return output.count
    }
}