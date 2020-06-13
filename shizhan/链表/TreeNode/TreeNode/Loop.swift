//
//  Loop.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 判断链表是否有环
/// - Parameter root: 根节点
public func isLoopNode<T>(root: TreeNode<T>) -> Bool {
    /// 快慢指针方法
    var f: TreeNode<T>? = root
    var s: TreeNode<T>? = root
    
    while f != nil && f?.next != nil {
        f = f?.next?.next
        s = s?.next
        if f === s {
            return true
        }
    }
    return false
    
}


/// 已知有环, 求环的起点 和 环的长度
/// - Parameter root: root
public func cyclePosition<T>(root: TreeNode<T>) -> TreeNode<T> {
    var f: TreeNode<T>? = root
    var s: TreeNode<T>? = root
    while f != nil && f?.next != nil {
        f = f?.next?.next
        s = s?.next
        if f === s {
            break
        }
    }
    /// 将头指针赋值给慢指针
    s = root
    var length: Int = 1
    while s !== f {
        length += 1
        s = s?.next
        f = f?.next
    }
    return s!
}
