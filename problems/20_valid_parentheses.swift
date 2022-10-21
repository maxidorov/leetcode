import Foundation

struct Stack<T> {
    private var items = [T]()

    var top: T? {
        items.last
    }

    mutating func push(_ item: T) {
        items.append(item)
    }

    @discardableResult
    mutating func pop() -> T? {
        items.removeLast()
    }
}

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = Stack<Character>()

        for c in s {
            if stack.top == "(" && c == ")" || stack.top == "{" && c == "}" || stack.top == "[" && c == "]" {
                stack.pop()
            } else {
                stack.push(c)
            }
        }

        return stack.top == nil
    }
}

func readStr() -> String {
    readLine()!
}

print(Solution().isValid(readStr()))