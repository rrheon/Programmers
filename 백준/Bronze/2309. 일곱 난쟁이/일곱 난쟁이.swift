import Foundation

var height = [Int]()

for _ in 0...8 {
  height.append(Int(readLine()!)!)
}

var sortedArr = height.sorted()
var removeNums = [Int]()
for i in 0..<sortedArr.count{
  for j in i+1..<sortedArr.count{
    if sortedArr.reduce(0, +) - sortedArr[i] - sortedArr[j] == 100 {
      sortedArr[i] = 0
      sortedArr[j] = 0
      break
    }
  }
}

for i in sortedArr {
  if i != 0 {
    print(i)
  }
}

