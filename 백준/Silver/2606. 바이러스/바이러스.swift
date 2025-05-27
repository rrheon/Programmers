
import Foundation

/*
 바이러스에 감염된 컴퓨터의 갯수 카운트하기
 
 */

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 0..<m {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  graph[input[0]].append(input[1])
  graph[input[1]].append(input[0])
}


func dfs(_ x: Int) {
  
  // 갈 수 있는 모든 지점 가보기
  visited[x] = true
  for next in graph[x] {
    if !visited[next] {
      dfs(next)
    }
  }
}

dfs(1)
print(visited.filter({ $0 }).count - 1)
