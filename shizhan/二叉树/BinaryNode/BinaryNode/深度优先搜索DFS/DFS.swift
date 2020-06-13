//
//  DFS.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 深度优先搜索
/// 栈
/// - Parameter node: <#node description#>
public func DFS<T>(node: BinaryTree<T>) {
    var stack = Stack<BinaryTree<T>>()
    stack.push(t: node)
    while !stack.isEmpty {
        let p = stack.pop()
        print(p?.data)
        if let right = p?.right {
            stack.push(t: right)
        }
        if let left = p?.left {
            stack.push(t: left)
        }
    }
}
