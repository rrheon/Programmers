import Foundation

/*
 가로 세로 각 100
 3 7
 -> 밑에서부터 3떨어짐 , 왼쪽으로부터 7떨어짐
 
 이중배열 써서 해당 범위에 들어오는 색종이의 범위를 1로 만든다
 모든 색종이의 범위를 완탐으로 1의 갯수를 센다
 
 3, 7 들어오면
 x축
 3 ~ 13까지 1로변경
 y축
 7 ~ 17까지 1로변경
 */

let num = Int(readLine()!)!

var area = Array(repeating: Array(repeating: false, count: 100), count: 100)

for _ in 0..<num {
  let input = readLine()!.components(separatedBy: " ").map { Int($0) }
  let (x, y) = (input[0]!, input[1]!)
  
  for i in x..<x+10 {
    for j in y..<y+10{
      area[i][j] = true
    }
  }
}

print(area.flatMap{ $0 }.filter{ $0 }.count)


