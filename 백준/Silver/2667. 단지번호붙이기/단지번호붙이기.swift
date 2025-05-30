import Foundation

let input = Int(readLine()!)!

var graph = [[Int]]()

for _ in 0..<input {
  let num = readLine()!.map { Int(String($0))! }
  graph.append(num)
}

var visited = Array(repeating: Array(repeating: false, count: input), count: input)

// 구역 별로 갯수 세기

let dx = [-1,1,0,0]
let dy = [0,0,-1,1]

var arr: [Int] = []

func dfs(_ x: Int, _ y: Int) -> Int {
  var count = 1
  visited[x][y] = true
  
  for i in 0..<4 {
    let nx = x + dx[i]
    let ny = y + dy[i]
    
    if  nx >= 0 && nx < input && ny >= 0 && ny < input && !visited[nx][ny] && graph[nx][ny] == 1 {
      count += dfs(nx, ny)
    }
  }
 
  return count
}

for i in 0..<input {
  for j in 0..<input{
    if !visited[i][j] && graph[i][j] == 1 {
      arr.append(dfs(i, j))
    }
  }
}


print(arr.count)
for i in arr.sorted() {
  print(i)
}
