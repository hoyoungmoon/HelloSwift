//
//  캐시.swift
//  HelloSwift
//
//  Created by mac on 2022/11/01.
//

import Foundation

class 캐시 {
    static func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
        var cache: [String] = []
        var time = 0

        cities.map { $0.lowercased() }.forEach {
            city in
            if let i = cache.index(of: city) {
                time += 1
                cache.remove(at: i)
            } else {
                time += 5
            }
            cache += [city] // cache.append(city)
            if cache.count > cacheSize {
                cache.remove(at: 0) // cache = Array(cache.dropFirst(cache.count - cacheSize))
            }
        }
        return time
    }
}
