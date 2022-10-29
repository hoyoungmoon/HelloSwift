//
//  모의고사.swift
//  HelloSwift
//
//  Created by mac on 2022/10/29.
//

import Foundation

class 모의고사 {

    static func solution(_ answers: [Int]) -> [Int] {
        let patterns = [
            "12345",
            "21232425",
            "3311224455"
        ]
        var correctArr: [Int] = Array(repeating: 0, count: 3)

        for i in 0..<3 {
            answers.enumerated().forEach {
                (index, answer) in
                let p_index = patterns[i].index(patterns[i].startIndex, offsetBy: index % patterns[i].count)
                let p = patterns[i][p_index]
                if answer == Int(String(p)) {
                    correctArr[i] += 1
                }
            }
        }

        var ans: [Int] = []
        let maxValue = correctArr.max()
        correctArr.enumerated().forEach({
            (index, correct) in
            if correct == maxValue {
                ans.append(index + 1)
            }
        })

        return ans
    }
}
