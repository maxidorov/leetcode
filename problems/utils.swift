import Foundation

struct Stack<T> {
    private var items = [T]()

    mutating func push(item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        items.removeLast()
    }
    
    mutating func count() -> Int {
        items.count
    }
}

func readInt() -> Int {
  Int(readLine()!)!
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

func readStr() -> String {
    readLine()!
}

func readStrs() -> [String] {
    readLine()!.components(separatedBy: " ")
}

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func makeListNode(from elements: [Int]) -> ListNode? {
    guard let last = elements.last else { return nil }
    var initial = ListNode(last)
    for e in elements.reversed().dropFirst() {
        let node = ListNode(e, initial)
        initial = node
    }
    return initial
}

func print(_ listNode: ListNode?, prefix: Int? = nil) {
    var listNode = listNode
    var res = [Int]()
    var count = prefix
    while let node = listNode, count != 0 {
        res.append(node.val)
        listNode = listNode?.next
        count = count.map { $0 - 1}
        print(node.val)
    }
    print(res.map(String.init).joined(separator: " -> "))
}