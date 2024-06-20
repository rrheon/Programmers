import Foundation

let word = readLine()!
let num = Int(readLine()!)!
var count = 0

for i in word {
  count += 1
  if count == num {
    print(i)
  }
}
