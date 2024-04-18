class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.count <= 1 {
            return intervals
        }

        // 인터벌의 시작을 기준으로 오름차순 정렬
        let intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var array = [[Int]]()

        // 첫번째 인터벌의 처음과 끝을 저장
        var start = intervals[0][0]
        var end = intervals[0][1]

        for interval in intervals {
            if end < interval[0] {
                // 겹치는 부분 없이 끊긴 경우
                array.append([start, end])
                start = interval[0]
                end = interval[1]
            } else {
                end = max(end, interval[1])
            }
        }

        array.append([start, end])
        return array
    }
}