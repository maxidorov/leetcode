import Foundation

class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let s = Array(s)
        var dict = [Character: Int]()
        var left = 0
        var ans = 0

        for (right, char) in s.enumerated() {
            dict[char] = dict[char, default: 0] + 1
            while right - left + 1 - (dict.map(\.value).max() ?? 0) > k {
                dict[s[left]] = dict[s[left], default: 1] - 1
                left += 1
            }
            ans = max(ans, right - left + 1)
        }

        return ans
    }
}

func readStr() -> String {
    readLine()!
}

func readInt() -> Int {
  Int(readLine()!)!
}

print(Solution().characterReplacement(readStr(), readInt()))