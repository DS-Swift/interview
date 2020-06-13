//
//  FindCommon.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 找出有序数组的共同元素
/// - Parameters:
///   - s: <#s description#>
///   - v: <#v description#>
///   - n: <#n description#>
public func findCommon<T: Comparable>(s: [T], v: [T], n: Int) -> [T] {
    var l: Int = 0
    var r: Int = 0
    var rs: [T] = []
    while l < n && r < n {
        if s[l] > v[r] {
            r += 1
        } else if s[l] == v[r] {
            rs.append(s[l])
            l += 1
            r += 1
        } else {
            l += 1
        }
    }
    return rs
    
}
