//
//  Codec.swift
//  BFS
//
//  Created by DSperson on 2020/6/16.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

class Codec {
    
    public func reserialize(_ root: TreeNode<Int>?, str: String) -> String {
        var rs = str
        if root == nil {
            return rs + "nil,"
        } else {
            rs += (rs + "\(root!.data),")
            rs += reserialize(root?.left, str: str)
            rs += reserialize(root?.right, str: str)
        }
        return rs
    }
    public func serilize(_ root: TreeNode<Int>?) -> String {
        let rs = reserialize(root, str: "")
        return rs
    }
    
    public func rdeserialize(data: Array<Substring>) -> TreeNode<Int>? {
        var newData = data
        guard let f = newData.first, f != "nil" else {
            return nil
        }
        let node = TreeNode(data: Int(f)!)
        newData.removeFirst()
        node.left = rdeserialize(data: newData)
        node.right = rdeserialize(data: newData)
        return node
    }
    
    func deserialize(_ data: String) -> TreeNode<Int>? {
         let array = data.split(separator: ",")
        let node = rdeserialize(data: array)
        return node
    }
}

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        for i in nums {
            if let _ = dict[i] {
                return i
            } else {
                dict[i] = 0
            }
        }
        return -1
    }
}
