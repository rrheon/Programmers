import Foundation

let a = readLine()!.split(separator:" ").map { Int($0)! }
var sum = Int()

for i in a {
  sum += i * i
}

print(sum % 10)
