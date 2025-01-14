class Solution {
    func reverseVowels(_ s: String) -> String {
        let lowerVowels: String = "aeiou"
        let upperVowels = lowerVowels.uppercased()

        var str: [Character] = Array(s)
        var indexList: [Int] = []
        var vowelList: [Character] = []

        for i in 0..<str.count {
            if lowerVowels.contains(str[i]) || upperVowels.contains(str[i]) {
                indexList.append(i)
                vowelList.append(str[i])
            }
        }

        vowelList.reverse()
        
        for i in 0..<indexList.count {
            str[indexList[i]] = vowelList[i]
        }

        return String(str)
    }
}