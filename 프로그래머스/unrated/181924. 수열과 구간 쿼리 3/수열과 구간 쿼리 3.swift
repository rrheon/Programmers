import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
  var result: [Int] = arr
  var temp: Int
  
  for i in queries {
    temp = result[i[0]]
    result[i[0]] = result[i[1]]
    result[i[1]] = temp
  }
  
  return result
}