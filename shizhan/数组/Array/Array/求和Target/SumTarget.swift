//
//  SumTarget.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 求和在数组中的位置
/// - Parameters:
///   - arr: <#arr description#>
///   - target: <#target description#>
public func twoSum(arr: [Int], target: Int) -> [Int] {
    var dic: [Int: Int] = [:]
    
    for (index, value) in arr.enumerated() {
        if let v = dic[target - value] {
            return [v, index]
        } else {
            dic[value] = index
        }
    }
    return [-1, -1]
}
