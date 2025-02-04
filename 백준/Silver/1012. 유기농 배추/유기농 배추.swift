import Foundation

// 테스트 횟수
let testCaseCount = Int(readLine()!)

for _ in 0..<testCaseCount! {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  
  // n - 가로 ,m - 세로 , warm - 지렁이 수
  let n = input[0], m = input[1], warm = input[2]
  
  // 밭 - 0 으로 채우기
  var map = [[Int]](repeating: (Array(repeating: 0, count: n)),count: m)
  
  // 밭에 배추 심기
  for _ in 0..<warm {
    let position = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let x = position[0], y = position[1]
    map[y][x] = 1
  }
  
  func dfs(x: Int, y: Int) -> Bool {
    // 밭을 벗어나는 경우
    if x < 0 || x >= n || y < 0 || y >= m { return false }
    
    if map[y][x] == 1 {
      map[y][x] = 0
      
      dfs(x: x - 1, y: y)
      dfs(x: x + 1, y: y)
      dfs(x: x, y: y + 1)
      dfs(x: x, y: y - 1)
      return true
    } else {
      return false
    }
  }
  
  var warmCount = 0
  
  for i in 0..<n {
    for j in 0..<m {
      if dfs(x: i, y: j) {
        warmCount += 1
      }
    }
  }
  
  print(warmCount)
}
