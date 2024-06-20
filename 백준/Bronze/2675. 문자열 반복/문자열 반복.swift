import Foundation

let count = Int(readLine()!)!

for _ in 1...count{
  let a = readLine()!.split(separator: " ")
  for i in a[1] {
    print(String(repeating: i , count: Int(a[0])!), terminator: "")
  }
  print()
}
