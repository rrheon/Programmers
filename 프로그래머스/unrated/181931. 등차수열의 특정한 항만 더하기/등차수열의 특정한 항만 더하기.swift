import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
  var count: Int = 0
  var result = 0
  for i in included {
    result += i == true ? a + d * count : 0
    count += 1
  }
  
  return result
}