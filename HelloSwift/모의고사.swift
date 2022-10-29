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

    static func improvedSolution(_ answers: [Int]) -> [Int] {
        // 패턴을 String이 아닌 배열로 하면 인덱스 표현이 편하다
        let patterns = [
            [1, 2, 3, 4, 5], [2, 1, 2, 3, 2, 4, 2, 5], [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
        ]
        // 딕셔너리로 하면 나중에 max 값 추출하기 편하다
        var corrects: [Int: Int] = [1: 0, 2: 0, 3: 0]
        for (i, answer) in answers.enumerated() {
            for student in 0..<3 {
                if patterns[student][i % patterns[student].count] == answer {
                    corrects[student + 1]! += 1
                }
            }
        }
        return corrects.filter {
            return $0.value == corrects.values.max()
        }.map { $0.key }.sorted { $0 < $1 }
    }

}
