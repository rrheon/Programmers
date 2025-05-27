
import Foundation

let weight = Int(readLine()!)!

var arr: [Int] = []

func solution(_ num: Int) {
  var n = num
  var i = 2
  
  while i * i <= n {
    while n % i == 0{
      arr.append(i)
      n /= i
    }
    i += 1
  }
  
  if n > 1 {
    arr.append(n)
  }
}

solution(weight)
print(arr.count)
print(arr.map { String($0) }.joined(separator: " "))
