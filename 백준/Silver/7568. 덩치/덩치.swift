import Foundation

let num = Int(readLine()!)!
var spec = Array(repeating: Array(repeating: 0, count: num), count: num)
var rankArr = Array(repeating: 1, count: num)

for i in 0..<num {
  let weightAndHeight = readLine()!.split(separator: " ").map{ Int($0)! }
  spec[i][0] = weightAndHeight[0]
  spec[i][1] = weightAndHeight[1]
}

for i in 0..<num {
  for j in 0..<num{
    if spec[i][0] < spec[j][0] && spec[i][1] < spec[j][1]{
      rankArr[i] += 1
    }
  }
}

for i in rankArr{
  print(i, terminator: " ")
}
