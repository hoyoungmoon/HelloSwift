//
//  기사단원의무기.swift
//  HelloSwift
//
//  Created by mac on 2022/12/23.
//

import Foundation

class 기사단원의무기 {
    static func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
        func getNumber(_ n: Int) -> Int {
            var cnt = 0;

            for i in 1...Int(floor(sqrt(Double(n)))) {
                if n % i == 0 {
                    if i * i == n {
                        cnt += 1;
                    } else {
                        cnt += 2;
                    }
                }
            }
            return cnt;
        }

        var arr: [Int] = [];
        for i in 1...number {
            arr.append(getNumber(i));
        }
        print(arr)

        var ans = 0;
        arr.forEach {
            if $0 > limit {
                ans += power;
            } else {
                ans += $0;
            }
        }


        return ans
    }
}
