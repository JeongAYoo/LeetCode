/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var list: [ListNode?] = [head]
        var currentNode = head

        while true {
            guard let next = currentNode?.next else { break }
            list.append(next)
            currentNode = next
        }

        return list[list.count / 2]
    }
}