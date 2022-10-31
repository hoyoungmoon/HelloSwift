//
//  튜플.swift
//  HelloSwift
//
//  Created by mac on 2022/10/31.
//

import Foundation

class 튜플 {
    static func solution(_ s: String) -> [Int] {
        var str = s
        str = String(str.dropLast(2))
        str = String(str.dropFirst(2))
        let arr = str.components(separatedBy: "},{").map {
            return $0.split(separator: ",").map { Int($0)! }
        }.sorted { $0.count < $1.count }

        var set = Set<Int>()
        var ans: [Int] = []
        arr.forEach {
            $0.forEach {
                num in
                if !set.contains(num) {
                    set.insert(num)
                    ans.append(num)
                }
            }
        }

        return ans
    }
}
