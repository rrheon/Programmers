import Foundation

func solution(_ arr:[String]) -> String {
  var result = ""
  arr.map { result.append($0) }
  return result
}