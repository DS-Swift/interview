//
//  BST.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

private func _bft<T: Comparable>(node: BinaryTree<T>?, min: T?, max: T?) -> Bool {
    if node == nil {
        return true
    }
    if let min = min {
        if min >= node!.data {
            return false
        }
    }
    if let max = max {
        if max <= node!.data {
            return false
        }
    }
    return _bft(node: node?.left, min: min, max: node?.data) && _bft(node: node?.right, min: node?.data, max: max)
}

public func BFT<T: Comparable>(node: BinaryTree<T>) -> Bool {
    
    return _bft(node: node, min: nil, max: nil)
}

/// 判断是否是BST
/// - Parameters:
///   - root: <#root description#>
///   - min: <#min description#>
///   - max: <#max description#>
public func isVaildBST<T: Comparable>(root: BinaryTree<T>?, min: T?, max: T?) -> Bool  {
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
