import Foundation

// 1~n까지 수를 스택에 넣었다가 뽑아 놓음으로써 하나의 수를 만듦
// 푸시는 오름차순
let inputNum = Int(readLine()!)!
var inputArray = [Int]()
var current = 0
var answer = [Character]()
var checkStatus = true

// 원하는 배열의 요소값이 될때까지 넣는다 , 요소값에 도달하면 뺀다
for _ in 0..<inputNum{
  let targetNum = Int(readLine()!)!
  
  while current < targetNum {
    current += 1
    inputArray.append(current)
    answer.append("+")
  }
  
  if inputArray.last == targetNum {
    inputArray.removeLast()
    answer.append("-")
  } else {
    checkStatus = false
  }
}

if checkStatus {
  for i in answer {
    print(i)
  }
} else {
  print("NO")
}

