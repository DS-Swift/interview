//
//  MinDepth.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func minDepth<T>(node: TreeNode<T>?) -> Int {
    if node == nil {
        return 0
    }
    let left = minDepth(node: node?.left)
    let right = minDepth(node: node?.right)
    
    return (left == 0 || right == 0) ? (left + right + 1) : (min(left, right) + 1)
}
