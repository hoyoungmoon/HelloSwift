//
//  문자열다루기기본.swift
//  프로그래머스 - 문자열다루기기본
//
//  Created by mac on 2022/10/20.
//

import Foundation

class 문자열다루기기본 {
    static func solution(_ s: String) -> Bool {
        return s.range(of: "[a-zA-Z]", options: .regularExpression) == nil && (s.count == 4 || s.count == 6)
    }
}
