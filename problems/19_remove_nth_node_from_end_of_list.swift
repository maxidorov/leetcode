class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var p1 = head
        var p2 = head
        
        (0..<n).forEach { _ in 
            p2 = p2?.next 
        }
        
        if p2 == nil {
            return head?.next 
        }
        
        while p2?.next != nil {
            p1 = p1?.next
            p2 = p2?.next
        }
        
        p1?.next = p1?.next?.next
        return head
    }
}