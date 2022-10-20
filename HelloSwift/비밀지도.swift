//
//  비밀지도.swift
//  HelloSwift
//
//  Created by mac on 2022/10/20.
//

import Foundation

class 비밀지도 {
    static func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
        // 첫 시도
        let wall1 = arr1.map {
            (v: Int) -> String in let str = String(v, radix: 2)
            return String(repeating: "0", count: n - str.count) + str
        }
        let wall2 = arr2.map {
            (v: Int) -> String in let str = String(v, radix: 2)
            return String(repeating: "0", count: n - str.count) + str
        }

        return zip(wall1, wall2).map {
            return zip(Array($0.0), Array($0.1)).map {
                return Int(String($0.0))! + Int(String($0.1))! == 0 ? " " : "#"
            }.joined()
        }
    }
}
