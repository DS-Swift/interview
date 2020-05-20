//
//  VaildAnagram.swift
//  VaildWord
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 判断有效字符串的异位词
/// - Parameters:
///   - s: <#s description#>
///   - v: <#v description#>
public func isAnagram(s: String, v: String) -> Bool {
    if s.count != v.count {
        return false
    }
    var dict1: [Character: Int] = [:]
    dict1.reserveCapacity(s.count)
    
    var dict2: [Character: Int] = [:]
    dict2.reserveCapacity(v.count)
    
    for c in s {
        dict1[c] = dict1[c] ?? 0 + 1
    }
    for c in v {
        dict2[c] = dict2[c] ?? 0 + 1
    }
    return dict1 == dict2
}

public func isAnagram2(s: String, v: String) -> Bool {
    var array1: [UInt32] = Array(repeating: 0, count: 26)
    var array2: [UInt32] = Array(repeating: 0, count: 26)
    
    let aValue = UnicodeScalar("a").value
    for c in s.unicodeScalars {
        let index = Int(c.value - aValue)
        array1[index] = array1[index] + 1
    }
    for c in v.unicodeScalars {
        let index = Int(c.value - aValue)
        array2[index] = array2[index] + 1
    }
    
    return array1 == array2
}
