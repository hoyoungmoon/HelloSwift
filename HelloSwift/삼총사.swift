//
//  삼총사.swift
//  HelloSwift
//
//  Created by mac on 2022/10/22.
//

import Foundation

class 삼총사 {
    static func solution(_ number: [Int]) -> Int {
        var cnt = 0;
        let sortedNumber = number.sorted()

        for first in 0..<number.count - 2 {
            for second in first + 1..<number.count - 1 {
                for third in second + 1..<number.count {
                    print(first, second, third)
                    if sortedNumber[first] + sortedNumber[second] + sortedNumber[third] == 0 { cnt += 1 }
                }
            }
        }
        return cnt
    }

    // 조합(Combination) 함수 연습
    static func combination<T>(_ r: Int, _ elements: [T]) -> [[T]] {
        var result = [[T]]()
        func combinate(_ index: Int, _ current: [T]) {
            if current.count == r {
                result.append(current)
                return
            }
            for i in index..<elements.count {
                combinate(i + 1, current + [elements[i]])
            }
            return
        }
        combinate(0, [])
        return result
    }
}
