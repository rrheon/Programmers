import Foundation

let num = readLine()!.split(separator: " ").map { Int($0)! }
let array = readLine()!.split(separator: " ").map { Int($0)! }

var sum = 0

for i in 0..<num[0] - 2 {
  for j in (i + 1)..<num[0] - 1 {
    for k in (j + 1)..<num[0] {
      let tmp = array[i] + array[j] + array[k]
      if sum < tmp && tmp <= num[1] {
        sum = tmp
      }
    }
  }
}

print(sum)
