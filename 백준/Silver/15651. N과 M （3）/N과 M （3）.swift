import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])
var arr = [Int]()
var result = ""
var visited = [Bool](repeating: false, count: n+1)

func recur(_ i: Int = 0) {
  if i == m {
    result += arr.map { String($0) }.joined(separator: " ") + "\n"
    return
  }
  
  for j in 1...n {
    arr.append(j)
    
    recur(i + 1)
    
    arr.removeLast()
  }
}

recur()
print(result)
