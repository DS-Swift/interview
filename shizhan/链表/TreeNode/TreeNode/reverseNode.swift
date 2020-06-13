//
//  reverseNode.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

public func reverse<T>(node: TreeNode<T>) -> TreeNode<T> {
    
    var p: TreeNode<T>? = node
    var q: TreeNode<T>? = node
    var rs: TreeNode<T>? = nil
    /// 模板
    while p != nil {
        p = p?.next
        q?.next = rs
        
        rs = q
        q = p
    }
    return rs!
    
}
