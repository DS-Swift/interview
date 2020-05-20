//
//  TreeNodeVaild.swift
//  BinaryTree
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

public func inOrder<T>(root: TreeNode<T>?) -> [T]  {
    guard let _ = root else {
        return []
    }
    return inOrder(root: root?.left) + [root!.data]  + inOrder(root: root?.right)
}
///isVaildBST(root: Node, min: nil, max: nil)

/// 二叉搜索树验证
/// - Parameters:
///   - root: <#root description#>
///   - min: <#min description#>
///   - max: <#max description#>
public func isVaildBST<T: Comparable>(root: TreeNode<T>?, min: T?, max: T?) -> Bool  {
    if root == nil {
        return true
    }
    if min != nil, min! > root!.data {
        return false
    }
    if max != nil, max! < root!.data {
        return false
    }
    return isVaildBST(root: root?.left, min: min, max: root?.data) && isVaildBST(root: root?.right, min: root?.data, max: max)
}

