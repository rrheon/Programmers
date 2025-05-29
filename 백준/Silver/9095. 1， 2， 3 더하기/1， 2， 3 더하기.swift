import Foundation

/*
 1-> 1가지
 2-> 1가지
 3 -> 111 12 21 3 4
 4 -> 7
 5 -> 13
 6 -> 24
 7 -> 44
 8 -> 81
 9 -> 149
 10 -> 274가지
 */

let input = Int(readLine()!)!
var num: [Int] = []

for _ in 0..<input {
  num.append(Int(readLine()!)!)
}

var i = num.max()!
var dp: [Int] = Array(repeating: 0, count: i + 1)

for j in 1...i {
  if j == 1{
    dp[j] = 1
    continue
  } else if j == 2 {
    dp[j] = 2
    continue
  }else if j == 3 {
    dp[j] = 4
    continue
  }else if j == 4 {
    dp[j] = 7
    continue
  }else if j == 5 {
    dp[j] = 13
    continue
  } else {
    dp[j] = dp[j - 3] + dp[j - 2] + dp[j - 1]
  }
}

for i in num {
  print(dp[i])
}
