//
//  숫자문자열과영단어.swift
//  HelloSwift
//
//  Created by mac on 2022/10/27.
//

import Foundation

class 숫자문자열과영단어 {
    static func solution(_ s: String) -> Int {
        let numberDict: [String: Int] = [
            "one": 1,
            "two": 2,
            "three": 3,
            "four": 4,
            "five": 5,
            "six": 6,
            "seven": 7,
            "eight": 8,
            "nine": 9,
            "zero": 0
        ]

        var ans = ""
        let arr = Array(s)
        var tmp = ""
        for i in 0..<arr.count {
            if arr[i].isNumber {
                ans += String(arr[i])
            } else {
                tmp += String(arr[i])
                if numberDict[tmp] != nil {
                    ans += String(numberDict[tmp]!)
                    tmp = ""
                }
            }

        }
        return Int(ans)!
    }
}
