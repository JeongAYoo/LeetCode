class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var s = Array(s)
        var t = Array(t)
        
        for i in 0..<t.count where !s.isEmpty {
            if s[0] == t[i] {
                s.remove(at: 0)
            }
        }

        return s.isEmpty
    }
}