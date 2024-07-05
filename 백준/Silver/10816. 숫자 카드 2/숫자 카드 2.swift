import Foundation

let handedCardsNum = Int(readLine()!)!
let handedCards = readLine()!.split(separator: " ").map { Int($0)! }

let countCardNum = Int(readLine()!)!
let countCards = readLine()!.split(separator: " ").map { Int($0)! }

var cardCountDict = [Int: Int]()

for card in handedCards {
  cardCountDict[card, default: 0] += 1
}

var count = [Int]()

for card in countCards {
  count.append(cardCountDict[card, default: 0])
}

print(count.map({ String($0) }).joined(separator: " "))
