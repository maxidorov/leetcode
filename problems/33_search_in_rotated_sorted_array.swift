import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = left + (right - left) / 2

            if nums[mid] == target {
                return mid
            }

            if nums[left] <= nums[mid] { // left sorted portion
                if target < nums[left] || target > nums[mid] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            } else { // right sorted portion
                if target > nums[right] || target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
        }

        return -1
    }
}

func readInt() -> Int {
  Int(readLine()!)!
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().search(readInts(), readInt()))