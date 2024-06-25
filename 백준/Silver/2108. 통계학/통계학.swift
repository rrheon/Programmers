import Foundation

// 홀수 입력 받기 n
let num = Int(readLine()!)!
var numbers = [Int]()
var numbersDic = [Int: Int]()

// n개의 수 입력받기
for _ in 0..<num {
    let i = Int(readLine()!)!
    numbers.append(i)
    numbersDic[i, default: 0] += 1
}

// 첫째 줄: n개의 수들의 합을 n으로 나눈 값
let sum = numbers.reduce(0, +)
let average = Double(sum) / Double(num)
print(Int(round(average)))

// 둘째 줄: 중앙값
let sortedNumbers = numbers.sorted()
print(sortedNumbers[num / 2])

// 셋째 줄: 최빈값
let maxValue = numbersDic.values.max()!
let mode = numbersDic.filter { $0.value == maxValue }.keys.sorted()
if mode.count > 1 {
    print(mode[1])
} else {
    print(mode[0])
}

// 넷째 줄: 최대값과 최솟값의 차이
if let maxNumber = numbers.max(), let minNumber = numbers.min() {
    print(maxNumber - minNumber)
}
