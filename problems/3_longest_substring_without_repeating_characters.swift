import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character: Int]()
        var lastRepeating = -1
        var ans = 0

        for (index, char) in s.enumerated() {
            if let charPrevIndex = dict[char], charPrevIndex > lastRepeating {
                lastRepeating = charPrevIndex
            }

            ans = max(ans, index - lastRepeating)
            dict[char] = index
        }

        return ans
    }
}

func readStr() -> String {
    readLine()!
}

print(Solution().lengthOfLongestSubstring(readStr()))