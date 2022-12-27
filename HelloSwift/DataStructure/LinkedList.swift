//
//  LinkedList.swift
//  HelloSwift
//
//  Created by mac on 2022/12/27.
//

import Foundation

// Equatable: 대부분의 기본 데이터 타입(클래스, 구조체, 열거형)이 따르는 프로토콜
class Node<T: Equatable> {
    let data: T
    let next: Node?

    init(data: T) {
        self.data = data
    }

    convenience init(data: T, next: Node) {
        self.init(data: data)
        self.next = next
    }
}

struct LinkedList {
    
}

