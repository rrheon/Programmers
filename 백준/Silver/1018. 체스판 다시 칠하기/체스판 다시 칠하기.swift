import Foundation

// 체스판 크기 입력받기
let size = readLine()!.split(separator: " ")
let rows = Int(size[0])!
let cols = Int(size[1])!

// 체스판 배열 입력받기
var chess = [[String]]()
var minCount = rows * cols

for _ in 1...rows {
  chess.append(readLine()!.map({ String($0)}))
}

// 최소값 찾기
// 첫번째 칸이 b인 경우
// 첫번째 칸이 w인 경우

for i in 0...(rows - 8) {
  for j in 0...(cols - 8) {
    var countBlack = 0
    var countWhite = 0
    for x in 0..<8 {
      for y in 0..<8 {
        if (x + y) % 2 == 0 {
          if chess[i + x][j + y] != "W" { countBlack += 1 }
          if chess[i + x][j + y] != "B" { countWhite += 1 }
        } else {
          if chess[i + x][j + y] != "B" { countBlack += 1 }
          if chess[i + x][j + y] != "W" { countWhite += 1 }
        }
      }
    }
    minCount = min(minCount, countBlack, countWhite)
  }
}

print(minCount)
