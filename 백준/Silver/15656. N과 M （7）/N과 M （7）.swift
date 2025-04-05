import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()

var array = [String]()
var result = [String]()

func recur(_ depth: Int) {
  if depth == m {
    result.append(array.joined(separator: " "))
    return
  }
  
  for i in 0..<n{
    array.append(String(arr[i]))
    recur(depth + 1)
    array.removeLast()
  }
}

recur(0)

print(result.joined(separator: "\n"))
