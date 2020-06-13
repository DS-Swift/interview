//
//  Queue.swift
//  Swift-algorithm
//
//  Created by DSperson on 2019/5/10.
//  Copyright © 2019 BAT. All rights reserved.
//

import Foundation

public struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head : Int = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    public var count : Int {
        return array.count - head
    }
    public var front : T? {
        if isEmpty {
            return nil
        }
        return array[head]
    }
    public mutating func enqueue(_ element : T) {
        array.append(element)
    }
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else {
            return nil
        }
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        var charge = false
        #if DEBUG
        charge = head > 2
        #else
        charge = array.count > 50 && percentage > 0.25
        #endif
        if charge
        {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
}





























