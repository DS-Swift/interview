//
//  ArratStack.swift
//  Swift-algorithm
//
//  Created by DSperson on 2019/11/1.
//  Copyright © 2019 BAT. All rights reserved.
//

import Foundation

public struct Stack<T> {
    
    fileprivate var stack: [T] = []
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    init() {
        self.stack = Array()
//        self.stack.reserveCapacity(<#T##minimumCapacity: Int##Int#>)
    }
    
    public mutating func push(t: T) {
        stack.append(t)
    }
    @discardableResult
    public mutating func pop() -> T? {
        if isEmpty {
            return nil
        }
        return stack.removeLast()
    }
    
    public func top() -> T? {
        return stack.last
    }

    public func peek() -> T? {
        return top()
    }
}
