//
//  BFSLevel.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func bfsLevelPrint<T: Comparable>(node: TreeNode<T>) -> [[T]]  {
    
    var queue = Queue<TreeNode<T>>()
//    var visiable = Set<T>()
    var rs: [[T]] = []
    queue.push(element: node)
    while queue.count != 0 {
        var t: [T] = []
        let size = queue.count
        for _ in 0..<size {
            let node = queue.pop()
            t.append(node!.data)
            if let left = node?.left {
                queue.push(element: left)
            }
            if let right = node?.right {
                queue.push(element: right)
            }
        }
        rs.append(t)
    }
    return rs
}
