import Foundation

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var ans = 0

        for num in nums where !set.contains(num - 1) {
            var len = 0
            while set.contains(num + len) {
                len += 1
                ans = max(len, ans)
            }
        }

        return ans
    }
}

func readInts() -> [Int] {
    readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().longestConsecutive(readInts()))