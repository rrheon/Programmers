import Foundation

let num = Int(readLine()!)!
var sum = 1
var count = 1

for i in 1...num {
  if num == 1 || num <= sum {
    print(count)
    break
  }
  sum += 6 * i
  count += 1
}
