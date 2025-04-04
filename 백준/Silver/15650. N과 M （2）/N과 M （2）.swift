import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])

var arr = [Int]()
var result = [[Int]]()
var visited = [Bool](repeating: false, count: n + 1)

func recur(_ i: Int) {
  if i == m && !result.contains(arr.sorted()){
    result.append(arr)
    print(arr.map { String($0)}.joined(separator: " "))
    return
  }
  
  for j in 1...n {
    if visited[j] { continue }
    
    visited[j] = true
    
    arr.append(j)
    
    recur(i + 1)
    
    arr.removeLast()
    
    visited[j] = false
  }
}

recur(0)


