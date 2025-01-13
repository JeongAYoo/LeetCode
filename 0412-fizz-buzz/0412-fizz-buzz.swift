class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var arr: [String] = []

        for num in 1...n {
            if num % 3 == 0 && num % 5 == 0 {
                arr.append("FizzBuzz")
            } else if num % 3 == 0 {
                arr.append("Fizz")
            } else if num % 5 == 0 {
                arr.append("Buzz")
            } else {
                arr.append("\(num)")
            }
        }

        return arr
    }
}