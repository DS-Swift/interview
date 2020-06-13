//
//  FindData.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 累加和原理
/// 对数组所有项求和，然后减去1--N-1的值，就是所求的重复数
/// - Parameter arr: <#arr description#>
func findData(arr: [Int]) -> Int {
    let n = arr.count
    let temp1 = arr.reduce(0, +)
    let temp2 = (n - 1) * ((n - 1) + 1) >> 1
    
    return temp1 - temp2
}


