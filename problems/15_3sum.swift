import Foundation

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted(by: <)
        var ans = [[Int]]()

        for (index, num) in nums.enumerated() {
            if index > 0 && num == nums[index - 1] {
                continue
            }

            var (left, right) = (index + 1, nums.count - 1)

            while left < right {
                let sum = num + nums[left] + nums[right]

                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    ans.append([num, nums[left], nums[right]])
                    left += 1

                    while nums[left] == nums[left - 1] && left < right {
                        left += 1
                    }
                }
            }
        }

        return ans
    }
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().threeSum(readInts()))