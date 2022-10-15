import Foundation 

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let d1 = makeCounterDict(s)
        let d2 = makeCounterDict(t)
        return d1 == d2
    }
    
    private func makeCounterDict(_ s: String) -> [Character: Int] {
        var dict = [Character: Int]()

        for char in s {
            dict[char] = dict[char, default: 0] + 1
        }

        return dict
    }
}

func readStrs() -> [String] {
    return readLine()!.components(separatedBy: " ")
}

let input = readStrs()

let (s, t) = (input[0], input[1])

print(Solution().isAnagram(s, t))