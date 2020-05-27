//
//  reversePrint.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func reversePrintRecursive<T>(root: TreeNode<T>?) {
    if root != nil {
        if root?.next != nil {
            reversePrintRecursive(root: root?.next)
        }
        print(root?.data)
    }
}

public func reversePrintStack<T>(root: TreeNode<T>) {
    var stack = Stack<T>()
    stack.push(t: root.data)
    var p = root.next
    while p != nil {
        stack.push(t: p!.data)
        p = p?.next
    }
    while !stack.isEmpty {
        print(stack.pop())
    }
}
