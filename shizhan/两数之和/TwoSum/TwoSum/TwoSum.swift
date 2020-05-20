//
//  TwoSum.swift
//  TwoSum
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/*
 最核心的思想在于 ---> 字典的key 是 elements的value, value 是序号
 [2, 8, 7, 4]
 target: 9
 */
public func twoSum(elements: [Int], target: Int) -> (Int, Int) {
    /// 2: 0
    /// 8: 1

    var dict: [Int: Int] = [:]
    for (index, value) in elements.enumerated() {
        if let i = dict[target - value] {
            return (i, index)
        } else {
            dict[value] = index
        }
    }
    return (-1, -1)
}
