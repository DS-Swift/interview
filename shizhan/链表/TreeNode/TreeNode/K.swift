//
//  K.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 倒数第K个节点
/// 使用快慢指针, 快指针先跑N步

public func findKth<T>(root: TreeNode<T>, k: Int) -> TreeNode<T>? {
    var f: TreeNode<T>? = root
    var s: TreeNode<T>? = root
    for _ in 0 ..< k {
        f = f?.next
    }
    while f != nil {
        s = s?.next
        f = f?.next
    }
    return s
}
