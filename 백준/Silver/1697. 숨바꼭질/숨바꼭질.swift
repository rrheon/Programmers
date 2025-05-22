import Foundation


let location = readLine()!.components(separatedBy: " ").map { Int($0)! }
var (a, b) = (location[0], location[1])

var visited = Array(repeating: false, count: 100001)
visited[a] = true

var index = 0

func bfs() {
  var queue: [(Int, Int)] = []

  queue.append((a,0))
  
  while !queue.isEmpty {
    let node = queue[index]
   
    if node.0 == b {
      print(node.1)
      break
    }
    
    if node.0 - 1 >= 0 && !visited[node.0 - 1] {
      visited[node.0 - 1] = true
      queue.append((node.0 - 1 , node.1 + 1))
    }
    
    if node.0 + 1 < 100001 && !visited[node.0 + 1]{
      visited[node.0 + 1] = true
      queue.append((node.0 + 1 , node.1 + 1))
    }
    
    if node.0 * 2 < 100001 && !visited[node.0 * 2 ]{
      visited[node.0 * 2] = true
      queue.append((node.0 * 2 , node.1 + 1))
    }
    
    index += 1
  }
}

bfs()
