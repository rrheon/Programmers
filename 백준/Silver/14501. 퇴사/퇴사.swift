import Foundation


/*
 오늘부터 N + 1일째 되는 날 퇴사하기 위해서 남은 N일 동안 최대한 많은 상담
 */

let input = Int(readLine()!)!
var interviews: [(Int, Int)] = []

for _ in 0..<input{
  let n = readLine()!.components(separatedBy: " ").map { Int($0)! }
  interviews.append((n[0], n[1]))
}

var cost = 0

func recur(idx: Int, value: Int){
  
  if idx > input {
    return
  }
  
  if idx == input {
    cost = max(cost, value)
    return
  }

  /// 선택하기  해당일수만큼 선택못함  + 해당일수
  recur(idx: idx + interviews[idx].0, value: value + interviews[idx].1)

  /// 선택 안하기 - 다음걸로이동
  recur(idx: idx + 1, value: value)
}

recur(idx: 0, value: 0)
print(cost)
