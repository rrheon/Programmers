import Foundation

let input = readLine()!.map { String($0)}

var stack: [String] = []
var result: Int = 0

for i in 0..<input.count{
  if input[i] == "("{
    stack.append("(")
  }else{
    stack.removeLast()
    if input[i - 1] == "(" {
      result += stack.count
    }else{
      result += 1
    }
  }
}

print(result)
