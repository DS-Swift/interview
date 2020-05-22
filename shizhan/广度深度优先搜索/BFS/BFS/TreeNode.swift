//
//  TreeNode.swift
//  BinaryTree
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

open class TreeNode<T> {
    var data: T
    public var isLeaf: Bool {
        return left == nil && right == nil
    }
    var left: TreeNode<T>?
    var right: TreeNode<T>?
    init(data: T) {
        self.data = data
    }
    
    
}

public func create(array: [Int]?) -> TreeNode<Int> {
    let node = TreeNode(data: 5)
    
    let left1 = TreeNode(data: 3)
    let right1 = TreeNode(data: 8)
    
    node.left = left1
    node.right = right1
//    
//    let left2 = TreeNode(data: 2)
//    let right2 = TreeNode(data: 4)
//    
//    left1.left = left2
//    left1.right = right2
//    
//    let left3 = TreeNode(data: 6)
//    let right4 = TreeNode(data: 10)
//    
//    right1.left = left3
//    right1.right = right4
//    
//    let left4 = TreeNode(data: 8)
//    left3.left = left4
    return node
}
