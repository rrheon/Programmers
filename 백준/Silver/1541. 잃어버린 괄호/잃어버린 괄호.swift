import Foundation

let num = readLine()!.components(separatedBy: "-")

var result = 0

for (i, part) in num.enumerated() {
  let sum = part.split(separator: "+").map { Int($0)! }.reduce(0, +)
  
  if i == 0 {
    result += sum
  }else {
    result -= sum
  }
}

print(result)
