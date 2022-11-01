//
//  JadenCase문자열만들기.swift
//  HelloSwift
//
//  Created by mac on 2022/10/30.
//

import Foundation

class JadenCase문자열만들기 {
    static func solution(_ s: String) -> String {
        var ans = ""
        var isFirst = true

        for c in s {
            if c == " " {
                ans += " "
                isFirst = true
                continue
            }

            if isFirst {
                ans += c.isNumber ? String(c) : String(c).uppercased()
                isFirst = false
            } else {
                ans += String(c).lowercased()
            }
        }
        return ans


    }

    static func solution2(_ s: String) -> String {
        // split(separator: " ")를 할 경우 공백이 연속되어도 빈 문자열이 배열에 추가되지 않는다
        return s.components(separatedBy: " ").map {
            word in
            return word.lowercased().enumerated().map {
                (index, c) in
                if index == 0 && c.isLetter {
                    return String(c.uppercased())
                }
                return String(c)
            }.joined()
        }.joined(separator: " ")
    }
}
