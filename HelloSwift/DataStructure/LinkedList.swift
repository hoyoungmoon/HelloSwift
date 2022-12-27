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
    var next: Node?

    init(data: T) {
        self.data = data
    }

    convenience init(data: T, next: Node) {
        self.init(data: data)
        self.next = next
    }
}

struct LinkedList<T:Equatable> {
    var head: Node<T>?
    var tail: Node<T>?

    func showList() {
        print("===== linked list =====")
        var now = head
        while now != nil {
            print("\(now!.data)")
            now = now?.next
        }
        print("==========")
    }

    mutating func add(node: Node<T>) {
        if head == nil {
            head = node
            tail = node
            return
        }
        tail?.next = node
        tail = node
    }

    mutating func insert(node: Node<T>, before: Node<T>) {
        var now = head
        while now?.data != before.data && now?.next != nil {
            now = now?.next
        }

        node.next = now?.next
        now?.next = node
    }

    mutating func delete(node: Node<T>) -> Bool {
        var now = head

        if(now?.data == node.data) {
            head = now?.next
            return true
        }

        while now?.next?.data != node.data && now?.next != nil {
            now = now?.next
        }

        if(now?.next?.data == node.data) {
            now?.next = now?.next?.next
            return true
        }
        return false
    }
}

