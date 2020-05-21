//
//  LowestCommon.swift
//  BinaryTree
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation
/// 计算最近公共祖先, 对于任意的二叉树
/// - Parameters:
///   - root: <#root description#>
///   - p: <#p description#>
///   - q: <#q description#>
public func lowestCommon<T: Comparable>(root: TreeNode<T>?, p: TreeNode<T>, q: TreeNode<T>) -> TreeNode<T>? {
    if root == nil || root?.data == p.data || root?.data == q.data {
        return root
    }
    let left = lowestCommon(root: root?.left, p: p, q: q)
    let right = lowestCommon(root: root?.right, p: p, q: q)
    
    return left == nil ? (right) : (right == nil ? left : root)
}


/// 判断二叉搜索树的最近公共祖先
/// - Parameters:
///   - root: <#root description#>
///   - p: <#p description#>
///   - q: <#q description#>
public func lowestCommonWithBST<T: Comparable>(root: TreeNode<T>?, p: TreeNode<T>, q: TreeNode<T>) -> TreeNode<T>? {
    guard root != nil else {
        return nil
    }
    if p.data < root!.data, root!.data > q.data {
        return lowestCommonWithBST(root: root?.left, p: p, q: q)
    }
    if p.data > root!.data, q.data > root!.data {
        return lowestCommonWithBST(root: root?.right, p: p, q: q)
    }
    return root
}

public func recrision(level: Int) {
    if level <= 0 {
        return
    }
    print("current", level)
    recrision(level: level - 1)
    print("recrion", level)
}
