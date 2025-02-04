import Foundation

// 1 -> 2, 3 ,4
// 2 -> 1,4
// 3 -> 1,4
// 4-> 1

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

// n - 정점의 개수, m - 간선의 수 , v - 시작정점
let n = input[0], m = input[1], v = input[2]

var graph = [[Int]](repeating: [], count: n + 1)

for _ in 0..<m {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  graph[input[0]].append(input[1])
  graph[input[1]].append(input[0])
}

for i in 1...n{
  graph[i].sort()
}

var visited = [Bool](repeating: false, count: n + 1)

// 스택 , 방문 체크
func dfs(v: Int){
  visited[v] = true
  
  print(v, terminator: " ")
  
  for i in graph[v]{
    if !visited[i]{
      dfs(v: i)
    }
  }
}

dfs(v: v)
print("")

/*
  3 1 4 2 5
 
 1 -> 2,3
 2 -> 1, 5
 3 -> 1, 4
 4 -> 3, 5
 5 -> 2, 4
 
 */
// 큐
visited = [Bool](repeating: false, count: n + 1)

func bfs(v: Int){
  var queue: [Int] = [v]
  visited[v] = true
  
  while !queue.isEmpty{
    let current = queue.removeFirst()
    print(current, terminator: " ")
    
    for i in graph[current]{
      if !visited[i]{
        queue.append(i)
        visited[i] = true
      }
      
    }
  }
}

bfs(v: v)

