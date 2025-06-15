import Foundation

/*
 나무의 수 n 가져가야하는 높이 m
 */
let input = readLine()!.split(separator: " ").map { Int($0)! }

var trees: [Int] = []
trees = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = trees.max()!

while start <= end {
  var sum = 0
  let mid = (start + end) / 2
  
  for tree in trees {
    if tree < mid { continue }
    sum += tree - mid
  }

  // 목표보다 큰 경우
  if sum >= input[1] {
    start = mid + 1
  }else {
    end = mid - 1
  }
}

print(end)
