class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        // s = t + t + t + ... + t 형태가 아니면 gcd가 존재하지 않음
        guard str1 + str2 == str2 + str1 else { return "" }

        let gcd = gcd(str1.count, str2.count)
        return String(str1.prefix(gcd))
    }

    func gcd(_ len1: Int, _ len2: Int) -> Int {
        // x가 y로 나누어 떨어질 때
        if len2 == 0 {
            return len1
        } else {
            return gcd(len2, len1 % len2)
        }
    }
}