import Foundation

let countNum = Int(readLine()!)!

var number: [(Int, Int)] = [(Int, Int)](repeating: (0,0), count: 41)
number[0] = (1,0)
number[1] = (0,1)

for i in 2..<number.count {
  number[i] = (number[i - 1].0 + number[i - 2].0, number[i - 1].1 + number[i - 2].1)
}

for _ in 0..<countNum{
  let num = Int(readLine()!)!
  print(number[num].0, number[num].1)
}

