import Foundation
func solution(_ num_list:[Int]) -> Int {
  var sum = 0
  var square = 1
  
  for i in num_list{
    sum += i
    square *= i
  }
  sum = sum*sum
  
  return sum > square ? 1 : 0
}