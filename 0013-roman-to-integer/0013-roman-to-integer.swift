class Solution {
    func romanToInt(_ str: String) -> Int {
        let dict: [Character: Int] = ["I": 1, 
                                      "V": 5,
                                      "X": 10,
                                      "L": 50,
                                      "C": 100, 
                                      "D": 500, 
                                      "M": 1000]
        var sum: Int = 0
        var prev: Int = 0

        for i in str {
            let number = dict[i]!
            if number > prev {
                sum -= prev
            } else {
                sum += prev
            }
            prev = number
        }
        sum += prev

        return sum
    }
}
// Roman numerals are usually written largest to smallest from left to right