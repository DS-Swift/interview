//
//  PMLOrder.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

class Sloution {
    
    func preSortRecursive<T>(node: BinaryTree<T>?) {
        if node == nil {
            return
        }
        print(node!.data)
        preSortRecursive(node: node?.left)
        preSortRecursive(node: node?.right)
    }
    func midSortRecursive<T>(node: BinaryTree<T>?) {
        if node == nil {
            return
        }
        midSortRecursive(node: node?.left)
        print(node!.data)
        midSortRecursive(node: node?.right)
    }
    func lastSortRecursive<T>(node: BinaryTree<T>?) {
        if node == nil {
            return
        }
        lastSortRecursive(node: node?.left)
        lastSortRecursive(node: node?.right)
        print(node!.data)
    }
    
    func preOrder<T>(node: BinaryTree<T>) {
        var stack = Stack<BinaryTree<T>>()
        var head: BinaryTree<T>? = node
        while head != nil || !stack.isEmpty {
            if let h = head {
                stack.push(t: h)
                print(h.data)
                head = head?.left
            } else {
                head = stack.pop()
                head = head?.right
            }
        }
    }
    
    func inOrder<T>(node: BinaryTree<T>) {
        var stack = Stack<BinaryTree<T>>()
        var head: BinaryTree<T>? = node
        while head != nil || !stack.isEmpty {
            if let h = head {
                stack.push(t: h)
                head = head?.left
            } else {
                head = stack.pop()
                print(head?.data)
                head = head?.right
            }
        }
    }
    
    func inOrder2<T>(node: BinaryTree<T>) {
        var head: BinaryTree<T>? = node
        var stack: Stack<BinaryTree<T>> = Stack()
        while head != nil || !stack.isEmpty {
            if let h = head {
                stack.push(t: h)
                head = head?.left
            } else {
                head = stack.pop()
                print(head?.data)
                head = head?.right
            }
        }
    }
    
    /// 后续太麻烦
    
    
}
