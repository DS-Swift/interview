//
//  merge.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func merge<T: Comparable>(s: TreeNode<T>, t: TreeNode<T>) -> TreeNode<T> {
    /// 哨兵
    let head: TreeNode<T> = TreeNode<T>(data: t.data)
    var ns: TreeNode<T>? = s
    var nt: TreeNode<T>? = t
    var p: TreeNode<T>? = head
    while ns != nil && nt != nil {
        if ns!.data <= nt!.data {
            p?.next = ns
            ns = ns?.next
            print("1")
        } else if ns!.data > nt!.data {
            p?.next = nt
            nt = nt?.next
            print("2")
        }
        p = p?.next
    }
    if ns != nil {
        p?.next = ns
    } else if nt != nil {
        p?.next = nt
    }
    return head.next!
}
