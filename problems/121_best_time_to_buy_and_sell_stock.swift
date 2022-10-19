import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var ans = 0
        var minPrice = Int.max

        for price in prices {
            if price < minPrice {
                minPrice = price 
                continue
            }

            if price > minPrice {
                ans = max(ans, price - minPrice)
            }
        }

        return ans
    }
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().maxProfit(readInts()))