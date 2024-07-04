import Foundation

let num = readLine()!.split(separator: " ").map { Int($0)! }
let climb = num[0]
let slide = num[1]
let height = num[2]

let netClimb = climb - slide

var days = 0
var currentHeight = 0

if netClimb <= 0 && climb < height {
  print("불가능한 값")
} else {
  if climb >= height {
    days = 1
  } else {
    days = (height - climb + netClimb - 1) / netClimb + 1
  }
  print(days)
}
