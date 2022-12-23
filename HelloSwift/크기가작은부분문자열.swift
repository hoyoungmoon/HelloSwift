//
//  크기가작은부분문자열.swift
//  HelloSwift
//
//  Created by mac on 2022/12/24.
//

import Foundation

class 크기가작은부분문자열 {
    static func solution(_ t: String, _ p: String) -> Int {
        var cnt = 0;
        for i in 0...t.count - p.count {
            let startIndex = t.index(t.startIndex, offsetBy: i);
            let lastIndex = t.index(t.startIndex, offsetBy: i + p.count);
            print(t[startIndex..<lastIndex])
            if Int(t[startIndex..<lastIndex])! <= Int(p)! {
                cnt += 1;
            }
        }

        return cnt
    }
}
