//
//  FindFirstCommon.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

public func findFirstCommon<T>(s: TreeNode<T>, t: TreeNode<T>) -> TreeNode<T>? {
    var f: TreeNode<T>? = s
    var slow: TreeNode<T>? = t
    
    var newF = f
    var newS = slow
    
    var sLength: Int = 0
    var tLength: Int = 0
    while f != nil {
        f = f?.next
        sLength += 1
    }
    while slow != nil {
        slow = slow?.next
        tLength += 1
        
    }
    func go(h: inout TreeNode<T>, l: Int) {
        for _ in 0 ..< l {
            h = h.next!
        }
    }
    /// 判断谁更长就先走
    let l = abs(sLength - tLength)
    if sLength > tLength {
        go(h: &newF!, l: l)
    } else {
        go(h: &newS!, l: l)
    }
    while newF !== newS {
        newF = newF?.next
        newS = newS?.next
    }
    return newF
}
