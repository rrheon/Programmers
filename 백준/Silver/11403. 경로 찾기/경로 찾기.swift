import Foundation

let num = Int(readLine()!)!

var array: [[Int]] = Array(repeating: Array(repeating: 0, count: num), count: num)

for i in 0..<num {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  array[i] = input
}

for k in 0..<num {
  for i in 0..<num {
    for j in 0..<num {
      if array[i][k] == 1 && array[k][j] == 1{
        array[i][j] = 1
      }
    }
    
  }
}


for i in array {
  print(i.map({ String ($0)}).joined(separator: " "))
}
