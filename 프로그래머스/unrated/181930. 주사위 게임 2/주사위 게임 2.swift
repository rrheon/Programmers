import Foundation
func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
  if a != b && a != c && b != c {
    return a+b+c
  } else if a == c && a == b && b == c{
    return (a+b+c)*(a*a + b*b + c*c)*(a*a*a + b*b*b + c*c*c)
  }else {
    return (a+b+c)*(a*a + b*b + c*c)

  }
}
