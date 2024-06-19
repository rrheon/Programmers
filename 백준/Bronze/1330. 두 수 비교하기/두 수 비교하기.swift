import Foundation

let a = readLine()!.split(separator: " ").map { Int($0)! }
if a[0] < a[1] {
  print("<")
} else if a[0] > a[1] {
  print(">")
} else {
  print("==")
}

