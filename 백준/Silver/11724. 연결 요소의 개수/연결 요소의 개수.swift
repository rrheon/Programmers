
import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0],input[1])
var graph = Array(repeating: [Int](), count: n + 1)

var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<m {
  let node = readLine()!.components(separatedBy: " ").map { Int($0)! }
  graph[node[0]].append(node[1])
  graph[node[1]].append(node[0])
}

var loopCount = 0

func dfs(_ x: Int) {
  
  visited[x] = true
  
  for i in graph[x] {
    if !visited[i] {
      dfs(i)
    }
  }
}

for i in 1...n{
  if !visited[i] {
    dfs(i)
    loopCount += 1
  }
}
print(loopCount)
