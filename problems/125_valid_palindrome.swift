import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter(\.isValid)
        print("str1:", str)
        print("str2:", String(str.reversed()))
        return str == String(str.reversed())
    }
}

extension Character {
    var isValid: Bool {
        alphanumericSet.contains(self)
    }
}

private let alphanumericSet = Set<Character>(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"])

func readStr() -> String {
    readLine()!
}

print(Solution().isPalindrome(readStr()))
