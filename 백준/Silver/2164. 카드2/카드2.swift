import Foundation

// 숫자 하나 받음
let num = Int(readLine()!)!

// 4면 위 1234 아래 이렇게 배열에 넣음
var numArray = Array(1...num)
var index = 0

while numArray.count - index != 1 {
  // 맨위에 숫자 버리고 그 다음숫자 맨 아래로 이동
  index += 1
  numArray.append(numArray[index])
  index += 1
}

print(numArray[index])
