import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()

var array = [Int]()

func recur(_ depth: Int, _ start: Int) {
  if depth == m {
    print(array.map { String($0)}.joined(separator: " "))
    return
  }
  
  for i in start..<n{
    array.append(arr[i])
    recur(depth + 1, i + 1)
    array.removeLast()
  }
}

recur(0, 0)
