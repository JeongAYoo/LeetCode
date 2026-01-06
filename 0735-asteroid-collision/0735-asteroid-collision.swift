class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        outerLoop: for n in asteroids {
            while n < 0, let last = stack.last, last > 0 {
                if last < abs(n) {
                    stack.removeLast()
                } else if last == abs(n) {
                    stack.removeLast()
                    continue outerLoop
                } else {
                    continue outerLoop
                }
            }

            stack.append(n)
        }

        return stack
    }
}