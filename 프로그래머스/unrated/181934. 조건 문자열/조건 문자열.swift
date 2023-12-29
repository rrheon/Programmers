import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    var result = 0
    
    if ineq == ">" && eq == "=" {
        result = n >= m ? 1 : 0
    } else if ineq == "<" && eq == "="{
      result = n <= m ? 1: 0
    } else if ineq == ">" && eq == "!" {
      result = n > m ? 1:0
    }else {
        result = n < m ? 1:0
    }
    return result
}