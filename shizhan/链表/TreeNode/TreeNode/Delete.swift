//
//  Delete.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 在O(1) 时间复杂度下删除
/// 如果删除节点为前面的n-1个节点，则时间复杂度为O(1)，只有删除节点为最后一个时，时间复杂度才为O(n)，所以平均的时间复杂度为：（O(1) * (n-1) + O(n)）/n = O(1);仍然为O(1).
/// 就是前 n-1个复杂度为O(1) 最后为O(N)
/// - Parameters:
///   - head: 头
///   - p: 删除节点
public func deleteNode<T>(head: TreeNode<T>, p: TreeNode<T>) {
    if p.next != nil {/// 如果不是结尾
        p.data = p.next!.data
        p.next = p.next?.next
        
    } else {
        /// 如果是结尾 则要-00
        var temp: TreeNode<T>? = head
        while temp?.next !== p {
            temp = temp?.next
        }
        temp?.next = nil
    }
}
