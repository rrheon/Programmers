import Foundation

var stack: [Int] = []

for _ in 0..<9{
  let input = Int(readLine()!)!
  stack.append(input)
}

var sum = stack.reduce(0, +)
var num1: Int = 0
var num2: Int = 0


for i in 0..<8{
  for j in (i + 1)..<9 {
    if sum - (stack[i] + stack[j]) == 100 {
      num1 = stack[i]
      num2 = stack[j]
      break
    }
  }
}

for i in stack {
  if i != num1 && i != num2 {
    print(i)
  }
}
