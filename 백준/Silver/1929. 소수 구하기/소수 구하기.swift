import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }

var arr: [Int] = Array(repeating: 0, count: inputs[1] + 1)

for i in 2...inputs[1] {
  arr[i] = i
}

for i in 2...inputs[1] {
  if arr[i] == 0 { continue }
  for j in stride(from: i + i, through: inputs[1] , by: i){
    arr[j] = 0
  }
}

for i in inputs[0]...inputs[1]{
  if arr[i] != 0 {
    print(arr[i])
  }
}



