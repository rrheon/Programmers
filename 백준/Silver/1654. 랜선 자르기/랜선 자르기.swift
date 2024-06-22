import Foundation

let num = readLine()!.split(separator: " ").map { Int($0) }
let input = num[0]!
let targetNum = num[1]!
var lengthArray = [Int]()

for _ in 1...input {
  lengthArray.append(Int(readLine()!)!)
}

var minLength = 1
var maxLength = lengthArray.max()!

while minLength <= maxLength {
  let mid = (minLength + maxLength) / 2
  var count = 0
  
  for i in 0..<input {
    count += lengthArray[i] / mid
  }
  
  if count < targetNum {
    maxLength = mid - 1
  }else {
    minLength = mid + 1
  }
}

print(minLength - 1)
