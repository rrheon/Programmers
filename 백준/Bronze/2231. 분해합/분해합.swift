import Foundation

let num = Int(readLine()!)!
var result = 0

// 1부터 num-1까지 모든 수를 검사
for i in 1..<num {
  var sum = i
  var temp = i
  
  // 각 자리수의 합을 구함
  while temp > 0 {
    sum += temp % 10
    temp /= 10
  }
  
  if sum == num {
    result = i
    break
  }
}

print(result)
