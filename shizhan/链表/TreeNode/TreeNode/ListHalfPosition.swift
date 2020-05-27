//
//  ListHalfPosition.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 当快指针到达尾部, 则慢支针 走到中间
/// - Parameter head: 头
public func nodeHalfPosition<T>(head: TreeNode<T>) -> TreeNode<T> {
    var f: TreeNode<T>? = head
    var s: TreeNode<T>? = head
    while f != nil && f?.next != nil {
        f = f?.next?.next
        s = s?.next
    }
    return s!
}
