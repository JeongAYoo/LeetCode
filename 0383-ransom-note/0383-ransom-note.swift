class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]

        for i in magazine {
            // magazine의 모든 글자가 나타난 횟수 저장
            dict[i] = (dict[i] ?? 0) + 1
        }

        for j in ransomNote {
            // ransonNote의 모든 글자가 나타난 횟수만큼 빼기
            dict[j] = (dict[j] ?? 0) - 1
        }

        if dict.values.min()! >= 0 {
            // 모든 저장된 횟수가 0보다 크거나 작으면 성공
            return true
        }

        return false
    }
}