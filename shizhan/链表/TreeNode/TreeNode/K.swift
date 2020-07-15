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
func removeNthFromEnd(_ head: TreeNode<Int>?, _ n: Int) -> TreeNode<Int>? {
    var fast: TreeNode<Int>? = head
    var slow: TreeNode<Int>? = head
    let rs: TreeNode? = TreeNode(data: 0)
    rs?.next = head
    // fast = 3
    for _ in 0 ..< n {
        fast = fast?.next
        if fast == nil {///n 等于整个长度
            return head?.next
        }
    }
    while (fast?.next != nil) {
        fast = fast?.next
        slow = slow?.next
    }
    //slow = 4->5
    slow?.next = slow?.next?.next
    return rs?.next
}
