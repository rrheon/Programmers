import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    
    var answer: [Int] = []
    
    for i in l...r {
        
        var n = Int(log10(Double(i)))
        var x = i
        
        while n >= 0 {
            if x / Int(pow(10.0, Double(n))) == 5 || x / Int(pow(10.0, Double(n))) == 0 {
                if n == 0 {
                    answer.append(i)
                    break
                }
                x = x % Int(pow(10.0, Double(n)))
                n = n-1
            }else{
                break
            }
        }
    }
    if answer == [] {
        answer.append(-1)
    }
    return answer
}