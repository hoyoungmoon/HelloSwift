//
//  다트게임.swift
//  HelloSwift
//
//  Created by mac on 2022/10/24.
//

import Foundation

class 다트게임 {
    static func solution(_ dartResult: String) -> Int {
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
