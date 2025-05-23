import Foundation

let num = readLine()!.components(separatedBy: " ").map { Int($0)! }

var a: Set<String> = []

for _ in 0..<num[0]{
  a.insert(readLine()!)
}

var arr: [String] = []

for _ in 0..<num[1]{
  let b = readLine()!
  
  if a.contains(b) {
    arr.append(b)
  }
}

print(arr.count)

for i in arr.sorted() {
  print(i)
}
