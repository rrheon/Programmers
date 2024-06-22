import Foundation

let num = Int(readLine()!)!

var count = 0
var i = 5
 
while num / i >= 1 {
  count += num / i
  i *= 5
}

print(count)
