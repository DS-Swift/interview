//
//  MaxDepth.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func maxDepth<T>(root: TreeNode<T>?) -> Int {
    if root == nil {
        return 0
    }
    return 1 + max(maxDepth(root: root?.left), maxDepth(root: root?.right))
}
