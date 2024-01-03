import Foundation

func solution(_ num_list:[Int]) -> [Int] {
  let count = num_list.count
  let num = num_list[count - 1] > num_list[count - 2] ? num_list[count - 1] - num_list[count - 2] : num_list[count - 1] * 2
  var result = num_list
  result.append(num)
  return result
}