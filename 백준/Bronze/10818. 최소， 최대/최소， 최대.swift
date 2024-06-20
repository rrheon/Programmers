import Foundation

let count = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
let maxNum = numbers.max()
let minNum = numbers.min()

print(minNum!, maxNum!)


