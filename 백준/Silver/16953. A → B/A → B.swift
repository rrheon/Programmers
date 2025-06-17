import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (start, target) = (input[0], input[1])

var queue: [(Int, Int)] = [(start, 1)]

while !queue.isEmpty {
  let current = queue.removeFirst()
  
  if current.0 == target {
    print(current.1)
    exit(0)
  }
 
  if current.0 * 2 <= target{
    queue.append((current.0 * 2, current.1 + 1))
  }
  
  if Int(String(current.0) + "1")! <= target {
    queue.append((Int(String(current.0) + "1")!, current.1 + 1))
  }
}

print(-1)
