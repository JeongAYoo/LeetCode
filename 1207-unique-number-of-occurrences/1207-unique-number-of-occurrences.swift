class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict: [Int: Int] = [:]

        for num in arr {
            guard let count = dict[num] else {
                dict[num] = 1
                continue;
            }
            
            dict[num] = count + 1
        }
        return dict.values.count == Set(dict.values).count
    }
}