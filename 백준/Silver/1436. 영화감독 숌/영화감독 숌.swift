import Foundation

// 몇 번째 666인지 카운트 할 변수 1개
var input = Int(readLine()!)!
var count = 0
var num = 0

while count != input {
  var temp = num
  while temp >= 666 {
    if temp % 1000 == 666 { count += 1; break }
    else { temp /= 10 }
  }
  num += 1
}

print(num - 1)
