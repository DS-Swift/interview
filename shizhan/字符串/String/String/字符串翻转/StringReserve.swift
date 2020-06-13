//
//  StringReserve.swift
//  String
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


public func stringReserve(str: String) -> String {
    /// swift str
//    let b = String(str.reversed())
    var left: Int = 0
    var right: Int = str.count - 1
    var value  = Array(str)
    while left < right {
        (value[left], value[right]) = (value[right], value[left])
        left += 1
        right -= 1
    }
    return String(value)
}
