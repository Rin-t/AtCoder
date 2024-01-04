//
//  main.swift
//  Atcoder
//
//  Created by Rin on 2023/12/30.
//

//MARK: - 勉強に使用したサイト
// AtCoder Problems
// https://kenkoooo.com/atcoder#/table/RinTake

// 勉強方法参考記事
// https://qiita.com/e869120/items/f1c6f98364d1443148b3
// https://qiita.com/kotaaaa/items/ddcf7f3e92e789731a7e

// SwiftでAtCoder
// https://qiita.com/kntkymt/items/4f02c6b90462f354de6d

// AtCoder Beginners Selection
// https://atcoder.jp/contests/abs

import Foundation


//MARK: - AtCoder Problems
// https://kenkoooo.com/atcoder#/table/RinTake

//MARK: - ABC 333

//MARK: - C - Repunit Trio
//let N = Int(readLine()!)!
//
//let repunits = (1...12).map { Int(String(repeating: "1", count: $0))! }
//
//var sum: Set<Int> = []
//for i in repunits {
//    for j in repunits {
//        for k in repunits {
//            sum.insert(i + j + k)
//        }
//    }
//}
//
//let sortedSum = sum.sorted()
//print(sortedSum[N - 1])




//MARK: - B - Pentagon

//let S = readLine()!
//let T = readLine()!
//
//let array: [Character] = ["A", "B", "C", "D", "E"]
//
//var disS = abs(array.firstIndex(of: S.first!)! - array.firstIndex(of: S.last!)!)
//disS = min(disS, 5 - disS)
//
//var disT = abs(array.firstIndex(of: T.first!)! - array.firstIndex(of: T.last!)!)
//disT = min(disT, 5 - disT)
//
//print(disS == disT ? "Yes" : "No")

//MARK: - A - Three Threes

//let N = Int(readLine()!)!
//
//var result = ""
//
//for _ in 1...N {
//    result += String(N)
//}
//
//print(result)



//MARK: - ABC 334
//MARK: - B - Christmas Trees
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let A = input[0]
//let M = input[1]
//let L = input[2]
//let R = input[3]
//
//func execute() {
//
//    let firstTree: Int
//    if A >= L {
//        firstTree = A - ((A - L) / M) * M
//    } else {
//        var toL = (L - A) % M
//        if toL == 0 {
//            firstTree = L
//        } else {
//            firstTree = L + M - toL
//        }
//    }
//
//    // 座標Rまでにいくつのツリーがあるか計算
//    if firstTree > R {
//        return print(0)
//    } else {
//        return print(1 + (R - firstTree) / M)
//    }
//}
//
//execute()

//MARK: - A - Christmas Present (1:52)
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let bat = input[0]
//let grove = input[1]
//
//print(bat > grove ? "Bat" : "Glove")



//MARK: - AtCoder Beginners Selection
// https://atcoder.jp/contests/abs

//MARK: - ABC086C - Traveling

//let N = Int(readLine()!)!
//var points: [(t: Int, x: Int, y: Int)] = []
//
//for _ in 1...N {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let t = input[0]
//    let x = input[1]
//    let y = input[2]
//    points.append((t, x, y))
//}
//
//func execute() {
//    var currentPoint = (t: 0, x:0, y:0)
//
//    for nextPoint in points {
//
//        let distance = abs(nextPoint.x - currentPoint.x) + abs(nextPoint.y - currentPoint.y)
//        let moveAmount = nextPoint.t - currentPoint.t
//
//        if moveAmount < distance {
//            return print("No")
//        }
//
//        if (moveAmount - distance) % 2 != 0 {
//            return print("No")
//        }
//
//        currentPoint = nextPoint
//
//    }
//
//    print("Yes")
//}
//
//execute()




//MARK: - ABC049C - 白昼夢

//let words = ["dream", "dreamer", "erase", "eraser"]
//var S = readLine()!
//
//while !S.isEmpty {
//    var isFound = false
//
//    for word in words {
//        if S.hasSuffix(word) {
//            isFound = true
//            S.removeLast(word.count)
//            break
//        }
//    }
//
//    if S.isEmpty {
//        print("YES")
//        break
//    }
//
//    if !isFound {
//        print("NO")
//        break
//    }
//}


//MARK: - ABC085C - Otoshidam
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0]
//var Y = input[1]
//
//func execute() {
//    for tenThousand in 0...N {
//        for fiveThousand in 0...N - tenThousand {
//            let thousand = N - tenThousand - fiveThousand
//            let total = tenThousand * 10000 + fiveThousand * 5000 + thousand * 1000
//            if total == Y {
//                print("\(tenThousand) \(fiveThousand) \(thousand)")
//                return
//            }
//        }
//    }
//    print("-1 -1 -1")
//}
//
//execute()

//while Y >= 1000 {
//    Y -= 1000
//    thousand += 1
//}
//
//let subtract = N - thousand
//
//if subtract % 9 == 0 || subtract % 4 == 0 {
//
//} else {
//    print("-1 -1 -1")
//}

//MARK: - ABC085B - Kagami Mochi
//let N = Int(readLine()!)!
//var nums: Set<Int> = []
//
//for _ in 0..<N {
//    nums.insert(Int(readLine()!)!)
//}
//
//print(nums.count)

//MARK: - ABC088B - Card Game for Two
//let N = Int(readLine()!)!
//let cards = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted { $0 > $1 }
//
//var result = 0
//
//for i in 0..<N {
//    if i % 2 == 0 {
//        result += cards[i]
//    } else {
//        result -= cards[i]
//    }
//}
//
//print(result)


//MARK: - ABC083B - Some Sums
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0]
//let A = input[1]
//let B = input[2]
//
//var sum = 0
//
//for i in 0...N {
//    let digitSum = String(i).map { $0.wholeNumberValue! }.reduce(0, +)
//    if A <= digitSum && digitSum <= B {
//        sum += i
//    }
//}
//
//print(sum)

//MARK: - ABC087B - Coins
//let fiveHundred = Int(readLine()!)!
//let hundred = Int(readLine()!)!
//let five = Int(readLine()!)!
//let target = Int(readLine()!)!
//
//var count = 0
//
//for i in 0...fiveHundred {
//    for j in 0...hundred {
//        for k in 0...five {
//            if i * 500 + j * 100 + k * 50 == target {
//                count += 1
//            }
//        }
//    }
//}
//print(count)

//MARK: - ABC081B - Shift only
//let numberOfCount = Int(readLine()!)!
//var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//var count = 0
//
//while true {
//    nums = nums.filter { $0 % 2 == 0 }.map { $0 / 2 }
//    if nums.count != numberOfCount {
//        break
//    }
//    count += 1
//}
//
//print(count)

//MARK: - ABC081A - Placing Marbles
//let input = readLine()!
//let result = input.filter { $0 == "1" }.count
//print(result)


//MARK: - ABC086A - Product
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//let isEven = nums.reduce(1, *) % 2 == 0
//let output = isEven ? "Even" : "Odd"
//print(output)


//MARK: - PracticeA - Welcome to AtCode
//let a = Int(readLine()!)!
//let bc = readLine()!.split(separator: " ").map { Int(String($0))! }
//let s = readLine()!
//
//let sum = a + bc[0] + bc[1]
//print("\(sum) \(s)")


