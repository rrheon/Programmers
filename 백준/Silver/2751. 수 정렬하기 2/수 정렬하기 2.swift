import Foundation

let num = Int(readLine()!)!
var nums = [Int]()

for _ in 0..<num{
  nums.append(Int(readLine()!)!)
}

for i in nums.sorted(){
  print(i)
}
