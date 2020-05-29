//
//  BinaryTree.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

open class BinaryTree<T> {
    var data: T
    var isLeaf: Bool {
        return left == nil && right == nil
    }
    var left: BinaryTree<T>?
    var right: BinaryTree<T>?
    init(data: T) {
        self.data = data
    }
    
}

public func generate() -> BinaryTree<Int> {
    var root = BinaryTree(data: 12)
    let left = BinaryTree(data: 9)
    let right = BinaryTree(data: 15)
    root.left = left
    root.right = right
    
    let ll = BinaryTree(data: 5)
    left.left = ll
    
    let lr = BinaryTree(data: 10)
    left.right = lr
    
    return root
    
}
