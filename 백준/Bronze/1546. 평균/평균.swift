import Foundation

// 점수 개수 입력받기
let scoreCount = Int(readLine()!)!
// 점수 받기
var scores = readLine()!.split(separator: " ").map { Double($0)! }
// 점수 중 최고점수 고르기
let maxScore = scores.max()!

var sum = Double()

// 모든점수를 점수 / 최고점수 * 100
for i in scores {
  sum +=  i / maxScore * 100
}

print(sum / Double(scoreCount))
