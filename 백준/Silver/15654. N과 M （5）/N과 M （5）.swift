import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n, m) = (input[0], input[1])

let num = readLine()!.components(separatedBy: " ").map { Int($0)!}.sorted()

var arr = [Int]()
var result = ""
var visited = [Bool](repeating: false, count: 10001)

func recur(i : Int = 0){
  if i == m {
    result += arr.map {String($0)}.joined(separator: " ") + "\n"
    return
  }
  
  for j in 0..<num.count {
    
    if visited[num[j]] { continue }
    
    visited[num[j]] = true
    
    arr.append(num[j])
    
    recur(i: i + 1)
    
    arr.removeLast()
    visited[num[j]] = false
  }
  
}

recur()
print(result)
