import Foundation

while true {
  let num = readLine()!.split(separator: " ").map { Int($0)! }
  let sortedNum = num.sorted()
  if sortedNum[0] == 0 {
    break
  }
  if pow(Decimal(sortedNum[0]) , 2) + pow(Decimal(sortedNum[1]) , 2) == pow(Decimal(sortedNum[2]),2){
    print("right")
  }else {
    print("wrong")
  }
}

