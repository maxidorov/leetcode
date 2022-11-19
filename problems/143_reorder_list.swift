import Foundation

class Solution {
    func reorderList(_ head: ListNode?) {
        var (slow, fast) = (head, head)

        while let nextFast = fast?.next?.next {
            slow = slow?.next
            fast = nextFast
        }

        slow?.next = reverseList(slow?.next)

        var p1 = head
        var p2 = slow?.next
        let p2start = p2

        print(p1)
        print(p2)

        print(p1 !== p2start)
        while p1 !== p2start {
            let p1c = p1
            p1 = p1?.next
            p1c?.next = p2
            let p2c = p2
            p2 = p2?.next
            if p1 === p2start {
                break
            }
            p2c?.next = p1
            print(head, prefix: 8)
        }

        p2?.next = nil
    }

    private func reverseList(_ head: ListNode?) -> ListNode? {
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
