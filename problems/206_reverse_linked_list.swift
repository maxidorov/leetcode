public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var c1 = head, var c2 = c1.next else { 
            return head 
        }
        
        c1.next = nil
        
        while let c3 = c2.next {
            c2.next = c1
            (c1, c2) = (c2, c3)
        }
        
        c2.next = c1
        return c2
    }
}