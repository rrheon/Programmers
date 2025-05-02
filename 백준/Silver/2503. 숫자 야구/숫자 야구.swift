import Foundation

let input = Int(readLine()!)!
var hints: [(Int, Int, Int)] = []

for _ in 0..<input {
  let data = readLine()!.split(separator: " ").map { Int($0)! }
  hints.append((data[0], data[1], data[2]))
}

var answer = 0

for num in 123...987 {
  let a = num / 100
  let b = num / 10 % 10
  let c = num % 10
  
  // 0 포함되거나 숫자 중복된 경우 제외
  if Set([a, b, c]).count != 3 || [a, b, c].contains(0) {
    continue
  }
  
  var isValid = true
  
  for hint in hints {
    let hNum = hint.0
    let hStrike = hint.1
    let hBall = hint.2
    
    let ha = hNum / 100
    let hb = hNum / 10 % 10
    let hc = hNum % 10
    
    let user = [a, b, c]
    let target = [ha, hb, hc]
    
    var strike = 0
    var ball = 0
    
    for i in 0..<3 {
      if user[i] == target[i] {
        strike += 1
      } else if target.contains(user[i]) {
        ball += 1
      }
    }
    
    if strike != hStrike || ball != hBall {
      isValid = false
      break
    }
  }
  
  if isValid {
    answer += 1
  }
}

print(answer)
