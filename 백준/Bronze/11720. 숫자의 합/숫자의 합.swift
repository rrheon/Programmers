import Foundation

let count = Int(readLine()!)!
let numbers = readLine()!.map { Int(String($0))!}.reduce(0,+)
print(numbers)
