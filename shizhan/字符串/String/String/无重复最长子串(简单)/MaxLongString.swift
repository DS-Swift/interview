//
//  MaxLongString.swift
//  String
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// Given a string, find the length of the longest substring without repeating characters.
/// “无重复字符的最长子串” 找出不含重复字符的最长子串长度
/// 滑动窗口
public func longString(str: String) -> Int {

    var window: [String.Element: Int] = [:]
    var left: Int = 0
    var right: Int = 0
    let count: Int = str.count
    let strArray = Array(str)
    var rs: Int = 0
    while right < count {
        let c = strArray[right]
        /// 如果大于0则证明重复了
        window[c] = (window[c] ?? 0) + 1
        right += 1
        while window[c]! > 1 {
            let c2 = strArray[left]
            window[c2]! -= 1
            left += 1
        }
        rs = max(rs, right - left)
    }
    
    return rs
}
