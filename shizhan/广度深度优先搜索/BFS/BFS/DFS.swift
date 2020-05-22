//
//  DFS.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

public func printRecursiveDepath<T>(node: TreeNode<T>?) {
    if node == nil {
        return
    }
    print(node?.data)
    printRecursiveDepath(node: node?.left)
    printRecursiveDepath(node: node?.right)
}

public func printDepth<T>(node: TreeNode<T>) {
    var stack = Stack<TreeNode<T>>()
    
    stack.push(t: node)
    
    while !stack.isEmpty {
        let node = stack.pop()
        print(node?.data)
        
        if let right = node?.right {
            stack.push(t: right)
        }
        
        if let left = node?.left {
            stack.push(t: left)
        }
    }
}
