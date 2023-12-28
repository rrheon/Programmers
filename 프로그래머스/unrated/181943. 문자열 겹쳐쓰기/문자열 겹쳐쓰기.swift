import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    var array = Array(my_string)
    let overwriteArray = Array(overwrite_string)
    
    for i in s..<s + overwrite_string.count {
        array[i] = overwriteArray[i - s]
    }
    
    return String(array)
}

