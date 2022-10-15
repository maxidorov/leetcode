import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex = [Int: Int]()

        for (index, num) in nums.enumerated() {
            if let second = numToIndex[target - num] {
                return [index, second]
            }
            numToIndex[num] = index
        }

        return []
    }
}

func readInt() -> Int {
  Int(readLine()!)!
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}


let nums = readInts()
let target = readInt()

print(Solution().twoSum(nums, target))
