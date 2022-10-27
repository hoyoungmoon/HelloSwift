//
//  신규아이디추천.swift
//  HelloSwift
//
//  Created by mac on 2022/10/28.
//

import Foundation

class 신규아이디추천 {
    static func solution(_ new_id: String) -> String {
        var ans: String = new_id
        //1
        ans = ans.lowercased()

        //2
        ans = ans.map {
            if $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." {
                return String($0)
            }
            return ""
        }.joined()

        //3
        while ans.contains("..") {
            ans = ans.replacingOccurrences(of: "..", with: ".")
        }

        //4
        if ans.hasPrefix(".") {
            ans.removeFirst()
        }

        if ans.hasSuffix(".") {
            ans.removeLast()
        }

        //5
        if ans == "" {
            ans = "a"
        }

        //6
        if ans.count >= 16 {
            let index = ans.index(ans.startIndex, offsetBy: 15)
            ans = String(ans[ans.startIndex..<index])
            if ans.hasSuffix(".") {
                ans.removeLast()
            }
        }

        //7
        if ans.count <= 2 {
            ans = ans + String(repeating: ans.last!, count: 3 - ans.count)
        }

        return ans
    }
}
