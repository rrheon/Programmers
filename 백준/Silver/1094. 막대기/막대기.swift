import Foundation

let input = Int(readLine()!)!

var count = 0
var target = input
var stick = 64

while true {
  if target == stick {
    count += 1
    break
  }
  
  if stick > target {
    stick = stick / 2
  }else {
    count += 1
    target -= stick
    stick = stick / 2
  
  }
}

print(count)
