//
//  BFS.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

public func printLevel<T: Comparable>(node: TreeNode<T>) {
    var queue = Queue<TreeNode<T>>(reserveCapacity: 10)
    queue.push(element: node)
    var rs: [[Any]] = []
    while queue.count != 0 {
        let node = queue.pop()
        print(node?.data)
        
        /// 存入新的
        if let left = node?.left {
            queue.push(element: left)
        }
        if let right = node?.right {
            queue.push(element: right)
        }
    }
    
    
}
