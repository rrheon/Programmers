import Foundation

let num = Int(readLine()!)!
var peopleArray = [(Int, String, Int)]()

for i in 1...num {
  let value = readLine()!.split(separator: " ")
  peopleArray.append((i, String(value[1]), Int(value[0])!))
}

for (_, key, value) in peopleArray.sorted(by: { $0.2 < $1.2 || ($0.2 == $1.2 && $0.0 < $1.0)}) {
  print(value, key)
}
