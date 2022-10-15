import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dictToStrings = [[Character: Int]: [String]]()

        for str in strs {
            let dict = makeDict(str)
            dictToStrings[dict] = dictToStrings[dict, default: []] + [str]
        }

        return dictToStrings.map(\.value)
    }

    private func makeDict(_ str: String) -> [Character: Int] {
        var dict = [Character: Int]()

        for char in str {
            dict[char] = dict[char, default: 0] + 1
        }

        return dict
    }
}

func readStrs() -> [String] {
    return readLine()!.components(separatedBy: " ")
}

print(Solution().groupAnagrams(readStrs()))