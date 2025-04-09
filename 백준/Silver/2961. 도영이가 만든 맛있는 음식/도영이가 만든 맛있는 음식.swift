import Foundation

/*
 신맛 - 선택한 재료의 곱
 단맛 - 선택한 재료의 합
 
 신맛 - 단맛의 차이가 가장 작은애
 */

let input = Int(readLine()!)!

var ingredients: [(Int, Int)] = []


for _ in 0..<input {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  let (n,m) = (input[0], input[1])
  
  ingredients.append((n,m))
}

var answer = Int.max

// 모든 경우의 수를 찾아서 가장 작은 값을 구한다

func recur(idx: Int, sour: Int, bitter: Int, selected: Int){
  if selected > 0 {
    answer = min(answer, abs(sour - bitter))
  }
  
  if idx == input { return }
  
  // 고르는 경우
  recur(idx: idx + 1, sour: sour * ingredients[idx].0, bitter: bitter + ingredients[idx].1, selected: selected + 1)
  // 안고르는 경우
  recur(idx: idx + 1, sour: sour, bitter: bitter, selected: selected)
}

recur(idx: 0, sour: 1, bitter: 0, selected: 0)

print(answer)
