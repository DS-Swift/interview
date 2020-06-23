//
//  Node.swift
//  Array&ListNode
//
//  Created by DSperson on 2020/5/11.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

open class Node<T> {
    var value: T
    var next: Node?
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
    /// 单链表生成方式
    /// - Parameter array: 数组
    public static func generate(array: [T]) -> Node? {
        guard array.count != 0 else {
            return nil
        }
        var node: Node? = Node(value: array.first!)
        let head = node
        for element in array.dropFirst() {
            let n = Node(value: element)
            node?.next = n
            node = node?.next
        }
        return head
    }
    
    /// 翻转单链表
    /// - Parameter node: Node
    public static func reserver(node: Node?) -> Node? {
        var head = node
        var rs: Node? = nil
        while head != nil {
            let p = head
            head = head?.next
            
            p?.next = rs
            rs = p
        }
        return rs
    }
    
    
    /// 两两翻转
    /// - Parameter node: Node
//    public static func swapPairs(node: Node) -> Node {
//        
//        var head: Node? = node
//       
//        var rs = head
//        /// 相邻位置
//        while head?.next != nil && head?.next?.next != nil {
//            var pre = head?.next
//            var last = head?.next?.next
//            
//            head = head?.next?.next
//        }
//    }
   
}


extension Node where T: Comparable {
    func sort(node: Node?) {
        
    }
}

public func hasCycle<T>(node: Node<T>) -> Bool {
    var next = node.next
    var nextNext = next?.next
    while nextNext != nil {
        if next === nextNext {
            return true
        }
        next = next?.next
        nextNext = nextNext?.next?.next
    }
    return false
}
