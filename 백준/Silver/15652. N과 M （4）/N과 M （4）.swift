import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])
var arr = [Int]()
var result = ""
var visited = [Bool](repeating: false, count: n+1)

func recur(depth: Int, start: Int) {
  if depth == m {
    result += arr.sorted().map({ String($0)}).joined(separator: " ") + "\n"
    return
  }
  
  for j in start...n{
    arr.append(j)
    
    recur(depth: depth + 1, start: j)
    
    arr.removeLast()
  }
  
}

recur(depth: 0,start: 1)
print(result)
