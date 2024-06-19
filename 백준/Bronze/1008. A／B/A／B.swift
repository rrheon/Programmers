import Foundation


let a = readLine()!.split(separator: " ").map { Double($0)! }
let b = a[0] / a[1]

print(b)
