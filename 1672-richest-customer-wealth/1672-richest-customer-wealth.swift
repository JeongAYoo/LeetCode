class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var sumArray: [Int] = []

        sumArray = accounts.map {
            $0.reduce(0, +)
        }

        return sumArray.max()!
    }
}