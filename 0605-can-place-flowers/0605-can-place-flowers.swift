class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowers: Int = n
        var bed = flowerbed

        for i in 0..<flowerbed.count {
            if bed[i] == 1 {
                continue
            }

            let left = bed[safe: i-1]
            let right = bed[safe: i+1]

            if left != 1 && right != 1 {
                bed[i] = 1
                flowers -= 1

                if flowers <= 0 {
                    break
                }
            }
        }

        return flowers <= 0 ? true : false
    }
}

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}