import Foundation

// bucket sort

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counter = [Int: Int]()
        
        for num in nums {
          counter[num] = counter[num, default: 0] + 1
        }

        var bucket = Array<Array<Int>>(repeating: [], count: nums.count)

        for (element, count) in counter where count != 0 {
          bucket[count - 1].append(element) 
        }

        var result = [Int]()
        var k = k

        for i in stride(from: nums.count - 1, through: 0, by: -1) {
          guard k > 0 else { 
            return result
          }

          if !bucket[i].isEmpty {
            let toAppend = bucket[i].prefix(max(k, bucket[i].count))
            result.append(contentsOf: toAppend)
            k -= toAppend.count
          }
        }

        return result
    }
}

func readInt() -> Int {
  Int(readLine()!)!
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().topKFrequent(readInts(), readInt()))
