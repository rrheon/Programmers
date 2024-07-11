import Foundation

enum inputSet: String {
  case push, pop, size, empty, front, back
}

struct Queue {
  private var queue: [Int] = []
  
  mutating func push(_ value: Int){
    queue.append(value)
  }
  
  mutating func pop() -> Int {
    if queue.isEmpty {
      return -1
    } else {
      return queue.removeFirst()
    }
  }
  
  var size: Int {
    return queue.count
  }
  
  var empty: Int {
    return queue.isEmpty ? 1 : 0
  }
  
  var front: Int {
    return queue.first ?? -1
  }
  
  var back: Int {
    return queue.last ?? -1
  }
}

let num = Int(readLine()!)!

var queue = Queue()

for _ in 0..<num{
  let input = readLine()!.split(separator: " ").map { String($0) }
  let commend = inputSet(rawValue: input[0])
  
  let number = input.count > 1 ? Int(input[1]) : 0
  
  switch commend {
  case .push:
    queue.push(number ?? 0)
  case .pop:
    print(queue.pop())
  case .size:
    print(queue.size)
  case .empty:
    print(queue.empty)
  case .front:
    print(queue.front)
  case .back:
    print(queue.back)
  default:
    break
  }
}
