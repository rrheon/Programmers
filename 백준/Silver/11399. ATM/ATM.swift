import Foundation

let input = readLine()!

var arr: [Int] = []
var newArr: [Int] = []

arr = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

arr.sort()

newArr.append(arr[0])

for i in 1..<arr.count {
  newArr.append(newArr[i - 1] + arr[i])
}

print(newArr.reduce(0, +))
