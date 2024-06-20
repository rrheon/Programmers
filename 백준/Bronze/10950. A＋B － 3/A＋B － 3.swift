import Foundation

let count = Int(readLine()!)!

for _ in 1...count {
  let numbers = readLine()!.split(separator: " ").map{ Int(String($0))! }
  print(numbers[0] + numbers[1])
}

