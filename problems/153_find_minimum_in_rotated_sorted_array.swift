import Foundation

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            if nums[left] <= nums[right] {
                return nums[left]
            }

            let mid = left + (right - left) / 2

            if nums[left] <= nums[mid] {
                left += 1
            } else {
                right -= 1
            }
        }

        return -1       
    }
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().findMin(readInts()))