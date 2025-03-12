import Foundation

let input = readLine()!.map { Int(String($0))!}
var array: [Int] = []

array.append(contentsOf: input)

var prevNum: Int
var count0: Int = 0
var count1: Int = 0

for i in 1..<array.count {
    prevNum = array[i - 1]
  if prevNum == array[i] {
    continue
  }else{
    if prevNum == 0 {
      count0 += 1
    }else{
     count1 += 1
    }
  }
}

if array.last == 0 {
  count0 += 1
}else{
 count1 += 1
}

print(min(count0, count1))

