//
//  이상한문자만들기.swift
//  HelloSwift
//
//  Created by mac on 2022/10/28.
//

import Foundation

class 이상한문자만들기 {
    static func solution(_ s: String) -> String {
        return s.components(separatedBy: " ").map { word in
            return word.enumerated().map { index, c in
                return index % 2 == 0 ? c.uppercased() : c.lowercased()
            }.joined()
        }.joined(separator: " ")
    }
}
