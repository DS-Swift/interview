//
//  TreeNode.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 单向链表;1
open class TreeNode<T> {
    var data: T
    var next: TreeNode?
    init(data: T) {
        self.data = data
    }
    
    /// 获取第几个
    /// - Parameter p: <#p description#>
    func index(p: Int) -> TreeNode<T>? {
        var temp: TreeNode<T>? = self
        for _ in 0 ..< (p - 1) {
            temp = temp?.next
        }
        return temp
    }
    /// 生成单链表
    /// - Parameter array: 数组对象
    static func generate(array: [T]) -> TreeNode<T> {
        guard array.count != 0 else {
            fatalError("array must not be nil")
        }
        let head = TreeNode(data: array[0])
        var p = head
        for i in array.dropFirst() {
            let temp = TreeNode(data: i)
            p.next = temp
            p = temp
        }
        return head
    }
    
    /// 生成一个带环链表
    /// - Parameter array: <#array description#>
    static func generateCycle(array: [T]) -> TreeNode<T> {
        var a = generate(array: array)
        var p: TreeNode<T>? = a
        let half = array.count / 2
        for _ in 0 ..< half {
            p = p?.next
        }
        var last: TreeNode<T>? = p
        for _ in half ..< (array.count - 1) {
            last = last?.next
        }
        last?.next = p
        return a
    }
}
