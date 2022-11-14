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