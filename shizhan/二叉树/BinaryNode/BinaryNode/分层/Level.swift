//
//  Level.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// BFS分层输出结果, BFS 核心就是队列
/// - Parameter node: <#node description#>
public func levelOrder<T>(node: BinaryTree<T>) -> [[T]] {
    var rs: [[T]] = []
    var queue = Queue<BinaryTree<T>>()
    queue.enqueue(node)
    
    /// 核心代码
    while !queue.isEmpty {
        var tm: [T] = []
        var size = queue.count
        while size > 0 {
            size -= 1
            let q = queue.dequeue()
            tm.append(q!.data)
            if let left = q?.left {
                queue.enqueue(left)
            }
            if let right = q?.right {
                queue.enqueue(right)
            }
        }
        rs.append(tm)
    }
    return rs
}

public func levelOrderPrint<T>(node: BinaryTree<T>) {
    var queue = Queue<BinaryTree<T>>()
    queue.enqueue(node)
    
    /// 核心代码
    while !queue.isEmpty {
        var size = queue.count
        while size > 0 {
            size -= 1
            let q = queue.dequeue()
            if let left = q?.left {
                queue.enqueue(left)
            }
            if let right = q?.right {
                queue.enqueue(right)
            }
            print(q?.data)
        }
        print("-------")
    }
}
