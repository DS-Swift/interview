//
//  binaryTreeDepth.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 递归
/// - Parameter node: node
public func treeDepth<T>(node: BinaryTree<T>?) -> Int {
    if node == nil {
        return 0
    }
    let left = treeDepth(node: node?.left)
    let right = treeDepth(node: node?.right)
    
    return 1 + max(left, right)
}


/// 最小节点
/// - Parameter node: <#node description#>
public func minDepth<T>(node: BinaryTree<T>?) -> Int {
    if node == nil {
        return 0
    }
    let left = minDepth(node: node?.left)
    let right = minDepth(node: node?.right)
    /// 如果left 或者 right = 0 ? 则他们中间的任意一个不为空 + 1(或者都未空 则就是 1)
    return (left == 0 || right == 0) ? (left + right + 1) : (min(left, right) + 1)
}

