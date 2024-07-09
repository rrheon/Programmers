import Foundation

let num = readLine()!.split(separator: " ").map { Int($0)! }

var arr = [Int](1...num[0])

var count = 0
var result = [Int]()

for _ in 0..<num[0]{
  count = (count + num[1] - 1) % arr.count
  result.append(arr.remove(at: count))
}

print("<\(result.map({ String($0)}).joined(separator: ", "))>")



