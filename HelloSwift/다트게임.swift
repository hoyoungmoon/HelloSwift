//
//  다트게임.swift
//  HelloSwift
//
//  Created by mac on 2022/10/24.
//

import Foundation

class 다트게임 {
    static func solution(_ dartResult: String) -> Int {
        // compactMap은 1차원 배열의 nil을 제거해주고, 옵셔널 바인딩을 해준다
        // flatMap은 2차원 배열을 1차원 배열로 flatten하게 해준다
        // [[1,2,3], [4,nil]].flatMap{$0}.compactMap{$0} -> [1,2,3,4]
        let numbers = dartResult.split(whereSeparator: { !$0.isNumber }).compactMap { Int($0) }
        let letters = dartResult.split(whereSeparator: { $0.isNumber })
        var scores = Array(repeating: 0, count: numbers.count)

        for (index, letter) in letters.enumerated() {
            letter.forEach {
                let number = numbers[index]
                switch $0 {
                case "S":
                    scores[index] = number
                case "D":
                    scores[index] = number * number
                case "T":
                    scores[index] = number * number * number
                case "#":
                    scores[index] = -scores[index]
                case "*":
                    if index != 0 {
                        scores[index - 1] = 2 * scores[index - 1]
                    }
                    scores[index] = 2 * scores[index]
                default:
                    break
                }
            }
        }

        return scores.reduce(0) { $0 + $1 }
    }
}
