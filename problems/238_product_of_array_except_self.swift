import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = [1]
        var prefix = 1

        for num in nums.dropLast() {
            prefix *= num
            res.append(prefix)
        }

        var postfix = 1

        for (index, num) in nums.enumerated().reversed() {
            res[index] *= postfix
            postfix *= num
        }

        return res
    }
}

/*

1 2 3 4

1 1 2 6
0 0 0 6


*/

func readInts() -> [Int] {
    readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

print(Solution().productExceptSelf(readInts()))