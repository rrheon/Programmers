import Foundation

var stack: [Int] = []

for _ in 0..<3{
  let input = Int(readLine()!)!
  stack.append(input)
}

if stack.reduce(0, { $0 + $1 }) != 180 {
  print("Error")
} else if stack[0] == 60 && stack[1] == 60 {
  print("Equilateral")
} else if stack[0] != stack[1] && stack[1] != stack[2] && stack[0] != stack[2]{
  print("Scalene")
}else{
  print("Isosceles")

}
  
