//
//  MoreThenHalfNumber.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


//根据数组特点，数组中一个数组出现的次数超过数组长度的一半，即它出现的次数比其他所有数字出现次数的和还要多
//.遍历数组时，保留两个值，一个是数组中的一个数字，一个是次数.
/// - Parameter arr: <#arr description#>
public func moreThenHaleNumber<T>(arr: [T]) -> T? where T: Comparable {
    if arr.count == 0 {
        return nil
    }
    var fitst = arr[0]
    var count: Int = 1
    for v in arr.dropFirst() {
        if count == 0 {
            fitst = v
            count = 1
        } else if v == fitst {
            count += 1
        } else {
            count -= 1
        }
    }
    return fitst
}
