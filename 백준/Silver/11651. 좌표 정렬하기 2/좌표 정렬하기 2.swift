import Foundation

let input = Int(readLine()!)!

var stack: [(Int, Int)] = []

for _ in 0..<input {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  stack.append((input[0], input[1]))
}

let sortedStack = stack.sorted {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  }
  return $0.1 < $1.1
}

for (x, y) in sortedStack {
  print(x, y)
}
