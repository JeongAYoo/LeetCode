class Solution {
    func decodeString(_ s: String) -> String {
        var countStack = [Int]()
        var resStack = [String]()
        var currentNum = 0
        var currentRes = ""

        for ch in s {
            if let digit = ch.wholeNumberValue {
                // 다자리 숫자 처리
                currentNum = currentNum * 10 + digit
            } else if ch == "[" {
                // 지금까지의 상태 저장
                countStack.append(currentNum)
                resStack.append(currentRes)
                // 새 블록 시작
                currentNum = 0
                currentRes = ""
            } else if ch == "]" {
                // 블록 종료: 이전 문자열 + (현재 문자열 * k)
                let k = countStack.removeLast()
                let prev = resStack.removeLast()
                currentRes = prev + String(repeating: currentRes, count: k)
            } else {
                // 일반 문자
                currentRes.append(ch)
            }
        }

        return currentRes
    }
}