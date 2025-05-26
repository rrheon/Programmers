import Foundation

let num = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<num {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  arr.append((input[0], input[1]))
}

var endTime = 0
var maxCount = 0

arr.sort {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  } else {
    return $0.1 < $1.1
  }
}

for meeting in arr {
  if endTime <= meeting.0 {
    maxCount += 1
    endTime = meeting.1
  }
}


print(maxCount)


