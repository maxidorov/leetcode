import Foundation

func readInt() -> Int {
  Int(readLine()!)!
}

func readInts() -> [Int] {
  readLine()!.components(separatedBy: " ").compactMap(Int.init)
}

func readStrs() -> [String] {
    return readLine()!.components(separatedBy: " ")
}
