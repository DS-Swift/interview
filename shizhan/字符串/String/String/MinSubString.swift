//
//  MinSubString.swift
//  String
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 最小子串
/// 给定字符串S, T. 请在字符串S中找出最小包含T字符串的子串
public func minSubString(s: String, t: String) -> String {
    if s.count < t.count {
        return ""
    }
    let sArray = Array(s)
//    let tArray = Array(t)
    
    /// 判断
    var window: [String.Element: Int] = [:]
    var need: [String.Element: Int] = [:]
    t.forEach { (c) in
        need[c] = (need[c] ?? 0) + 1
    }
    /// 双指针(左右指针)
    var left: Int = 0
    var right: Int = 0
    /// 用来记录最短位置
    var start: Int = 0
    var minLegth: Int = Int.max
    
    /// 用来计算匹配个数
    var match = 0
    while right < s.count {
        let c1 = sArray[right]
        if let _ = need[c1] {
            window[c1] = (window[c1] ?? 0) + 1
            /// 如果窗口中当前字符串数量和需要匹配的字符串数量相等; 匹配成功一次
            if window[c1] == need[c1] {
                match += 1
            }
        }
        right += 1
        /// 如果匹配到了足够的数据, 开始left 移动
        while match == need.count {
            /// 如果这个长度小于之前最小的匹配长度, 则更新
            let cl = right - left
            if cl < minLegth {
                start = left
                minLegth = cl
            }
            let c2 = sArray[left]
            /// 如果need中有这个left指针指向的这个值, 则应该将他从窗口数据中移除. 并重新判断match数量
            if let _ = need[c2] {
                window[c2] = (window[c2] ?? 0) - 1
                if window[c2]! < need[c2]! {
                    match -= 1
                }
            }
            left += 1
        }
    }
    if minLegth == Int.max {
        return ""
    }
    return String(sArray[start ..< (start + minLegth)])
 
}


