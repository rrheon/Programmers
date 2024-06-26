import Foundation

let testCases = Int(readLine()!)!

for _ in 0..<testCases {
  let input = readLine()!.split(separator: " ").map { Int($0) }
  let n = input[0]!
  let m = input[1]!
  
  var priorities = readLine()!.split(separator: " ").map { Int($0)! }
  
  var queue: [(index: Int, priority: Int)] = []
  
  for (index, priority) in priorities.enumerated() {
    queue.append((index,priority))
  }
  
  var printOrder = 0
  
  while !queue.isEmpty {
    let current = queue.removeFirst()
    
    if queue.contains(where: { $0.priority > current.priority}) {
      queue.append(current)
    } else {
      printOrder += 1
      if current.index == m {
        print(printOrder)
        break
      }
    }
  }
}
