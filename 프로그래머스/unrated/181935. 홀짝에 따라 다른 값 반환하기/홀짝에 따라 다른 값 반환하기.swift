import Foundation

func solution(_ n:Int) -> Int {
  var result = [Int]()
  if n % 2 == 0 {
    var i = 0
    while i <= n {
      result.append(i*i)
      i += 2
    }
  }else {
    var i = 1
    while i <= n{
      result.append(i)
      i += 2
    }
  }
  return result.reduce(0, {x,y in x+y})
}