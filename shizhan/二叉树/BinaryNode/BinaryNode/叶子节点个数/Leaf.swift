//
//  Leaf.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 求叶子节点的数量
/// - Parameter node: <#node description#>
public func leafNum<T>(node: BinaryTree<T>?) -> Int {
    if node == nil {
        return 0
    }
    if node!.isLeaf {
        return 1
    }
    return leafNum(node: node?.left) + leafNum(node: node?.right)
}
