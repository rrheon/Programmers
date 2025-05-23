import Foundation

/*
 미로찾기
 
 bfs로 탐색하면서 1씩 증가시키기
 맨 마지막 그래프의 값 출력
 
 */

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (input[0], input[1])

var graph: [[Int]] = []


for _ in 0..<n {
  graph.append(readLine()!.map { Int(String($0))! })
}

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

var queue: [(Int, Int)] = [(0,0)]
var index = 0

while index < queue.count {
  let (x, y) = queue[index]
  
  index += 1
  
  for i in 0..<4{
    let nx = x + dx[i]
    let ny = y + dy[i]
    
    if nx >= 0 && nx < n && ny >= 0 && ny < m {
      if graph[nx][ny] == 1{
        graph[nx][ny] = graph[x][y] + 1
        queue.append((nx,ny))
      }
    }
  }
}

print(graph[n - 1][m - 1])