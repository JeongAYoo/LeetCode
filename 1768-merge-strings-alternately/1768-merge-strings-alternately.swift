class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let minLength = min(word1.count, word2.count)
        var word1 = Array(word1)
        var word2 = Array(word2)
        var merged: [Character] = []

        for i in 0..<minLength {
            merged.append(word1[i])
            merged.append(word2[i])
        }

        word1[minLength..<word1.count].forEach { 
            merged.append($0)
        }

        word2[minLength..<word2.count].forEach {
            merged.append($0)
        }

        return String(merged)
    }
}