class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitudes: [Int] = [0]

        for i in 0..<gain.count {
            altitudes.append(altitudes[i] + gain[i])
        }
        return altitudes.max()!
    }
}