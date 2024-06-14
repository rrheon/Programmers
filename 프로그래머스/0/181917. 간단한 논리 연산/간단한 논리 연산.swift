import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    //좌 우 둘 다 true여야함 
    // x1이나 x2 둘 중 하나가 트루고 x3, x4중 하나가 트루여야함
    if x1 == x2 && x1 == false || x3 == x4 && x3 == false {
        return false
    } else {
       return true
    }
}