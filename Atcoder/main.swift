//
//  main.swift
//  Atcoder
//
//  Created by Rin on 2023/12/30.
//

// AtCoder Problems
// https://kenkoooo.com/atcoder#/table/RinTake

// 勉強方法参考記事
// https://qiita.com/e869120/items/f1c6f98364d1443148b3

// SwiftでAtCoder
// https://qiita.com/kntkymt/items/4f02c6b90462f354de6d

import Foundation

//MARK: - AtCoder Beginners Selection
// https://atcoder.jp/contests/abs

//MARK: - ABC087B - Coins
let fiveHundred = Int(readLine()!)!
let hundred = Int(readLine()!)!
let five = Int(readLine()!)!
let target = Int(readLine()!)!

var count = 0

for i in 0...fiveHundred {
    for j in 0...hundred {
        for k in 0...five {
            if i * 500 + j * 100 + k * 50 == target {
                count += 1
            }
        }
    }
}

print(count)

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


