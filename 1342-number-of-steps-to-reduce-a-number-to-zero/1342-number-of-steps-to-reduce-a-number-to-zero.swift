class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var n: Int = num
        var step: Int = 0

        while n != 0 {
            if n % 2 == 0 {
                n /= 2
            } else {
                n -= 1
            }

            step += 1
        }

        return step
    }
}