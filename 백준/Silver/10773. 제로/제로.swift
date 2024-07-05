import Foundation

let num = Int(readLine()!)!
var moneyStack = [Int]()

for _ in 0..<num{
  let money = Int(readLine()!)!
  if money == 0 {
    moneyStack.removeLast()
  }else{
    moneyStack.append(money)
  }
}

print(moneyStack.reduce(0, +))
