import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var (n,m) = (input[0], input[1])

var arr: [Int] = []
var count = 0

for _ in 0..<n {
  arr.append(Int(readLine()!)!)
}


for i in arr.reversed() {
  if m - i < 0 {
    continue
  }else {
    count += m / i
    m = m % i
  }
}


print(count)
