import Foundation

func solution(_ num_list:[Int]) -> Int {
  var even = ""
  var odd = ""
 
  for i in num_list {
    i % 2 == 0 ? even.append(contentsOf: String(i)) : odd.append(contentsOf: String(i))
  }

  return (Int(even) ?? 0) + (Int(odd) ?? 0)
}