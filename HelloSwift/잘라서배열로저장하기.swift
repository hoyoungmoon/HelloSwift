//
//  잘라서배열로저장하기.swift
//  HelloSwift
//
//  Created by mac on 2022/12/19.
//

import Foundation

class 잘라서배열로저장하기 {
    static func solution(_ my_str: String, _ n: Int) -> [String] {
        var ans: [String] = [];
        var loop: Int = Int(floor(Double(my_str.count) / Double(n)));

        for i in 0..<loop {
            let startIndex = my_str.index(my_str.startIndex, offsetBy: i * n);
            let endIndex = my_str.index(my_str.startIndex, offsetBy: min((i + 1) * n - 1, my_str.count - 1));
            let s = my_str[startIndex...endIndex];
            ans.append(String(s));
            print(s);
        }
        return ans
    }
}
