class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        for n in asteroids {
            if n > 0 {
                stack.append(n)
            } else {
                while let last = stack.last, last > 0, last < abs(n) {
                    stack.removeLast()
                }

                if let last = stack.last, last + n == 0 {
                    stack.removeLast()
                }else if stack.isEmpty || stack.last! < 0 {
                    stack.append(n)
                }
            }
        }

        return stack
    }
}