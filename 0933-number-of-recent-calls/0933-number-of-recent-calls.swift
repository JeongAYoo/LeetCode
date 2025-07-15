
class RecentCounter {
    var requests: [Int]
    var index: Int

    init() {
        self.requests = []
        self.index = -1
    }
    
    func ping(_ t: Int) -> Int {
        let last = requests.last
        requests.append(t)
        
        if let last, last < t-3000 {
            return 0
        }
         
        for i in 0..<requests.count {
            if requests[i] >= (t-3000) {
                return requests.count - i
            }
        }
        return requests.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */