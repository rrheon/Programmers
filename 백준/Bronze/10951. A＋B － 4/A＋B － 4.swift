import Foundation

while let input = readLine() {
  print(input.split(separator: " ").map { Int(String($0))!}.reduce(0, +))
}