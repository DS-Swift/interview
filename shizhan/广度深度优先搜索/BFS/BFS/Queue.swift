//
//  Queue.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public struct Queue<T> {
    public var count: Int {
        return array.count
    }
    fileprivate var array: [T] = []
    public init(reserveCapacity: Int) {
        array.reserveCapacity(reserveCapacity)
    }
    init() {
        
    }
    public mutating func push(element: T) {
        array.append(element)
    }
    public mutating func pop() -> T? {
        if count == 0 {
            return nil
        }
        return array.removeFirst()
    }
}
