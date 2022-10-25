//
//  성격유형검사하기.swift
//  HelloSwift
//
//  Created by mac on 2022/10/25.
//

import Foundation

class 성격유형검사하기 {
    static func solution(_ survey: [String], _ choices: [Int]) -> String {
        var scores: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
        for (index, choice) in choices.enumerated() {
            let typeArr = Array(survey[index])
            if choice > 4 {
                scores[typeArr[1]]! += abs(choice - 4)
            } else {
                scores[typeArr[0]]! += abs(choice - 4)
            }
        }

        let rt = scores["R"]! < scores["T"]! ? "T" : "R"
        let cf = scores["C"]! < scores["F"]! ? "F" : "C"
        let jm = scores["J"]! < scores["M"]! ? "M" : "J"
        let an = scores["A"]! < scores["N"]! ? "N" : "A"
        return rt + cf + jm + an
    }
}
