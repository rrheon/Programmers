import Foundation

enum inputSet: String {
  case push, pop, size, empty, top
}

struct Stack {
  private var stack: [Int] = []
  
  mutating func push(_ value: Int){
    stack.append(value)
  }
  
  mutating func pop() -> Int {
    return stack.popLast() ?? -1
  }
  
  var size: Int {
    return stack.count
  }
  
  var empty: Int {
    return stack.isEmpty ? 1 : 0
  }
  
  var top: Int {
    return stack.last ?? -1
  }
}

let num = Int(readLine()!)!

var stack = Stack()

for _ in 0..<num{
  let input = readLine()!.split(separator: " ").map { String($0) }
  let commend = inputSet(rawValue: input[0])
  
  let number = input.count > 1 ? Int(input[1]) : 0
  
  switch commend {
  case .push:
    stack.push(number ?? 0)
  case .pop:
    print(stack.pop())
  case .size:
    print(stack.size)
  case .empty:
    print(stack.empty)
  case .top:
    print(stack.top)
  default:
    break
  }
}

