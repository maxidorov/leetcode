import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1

        func area(_ left: Int, _ right: Int) -> Int {
            min(height[left], height[right]) * (right - left)
        }

        var ans = 0

        while left < right {
            ans = max(area(left, right), ans)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return ans
    }
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().maxArea(readInts()))