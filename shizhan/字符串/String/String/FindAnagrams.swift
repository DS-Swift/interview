//
//  FindAnagrams.swift
//  String
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation


/// 给定一个字符串s, 和一个非空字符串p, 找出s中所有是p的字母异位词的子串, 返回这些子串的起始索引
/// - Parameters:
///   - s: <#s description#>
///   - p: <#p description#>
public func findAnagrams(s: String, p: String) -> [Int] {
    
    var window: [String.Element: Int] = [:]
    var needs: [String.Element: Int] = [:]
    p.forEach { (c) in
        needs[c] = (needs[c] ?? 0) + 1
    }
    var rs: [Int] = []
    let sArray = Array(s)
    var match: Int = 0
//    var start: Int = 0
    var left: Int = 0
    var right: Int = 0
    
    while right < s.count {
        let c1 = sArray[right]
        /// 如果
        if let _ = needs[c1] {
            window[c1] = (window[c1] ?? 0) + 1
            if window[c1] == needs[c1] {
                match += 1
            }
        }
        right += 1
        while match == needs.count {
            /// 如果正好等于这个长度, 则证明是字母异位词
            if right - left == p.count {
                rs.append(left)
            }
            let c2 = sArray[left]
            if let _ = needs[c2] {
                window[c2] = (window[c2] ?? 0) - 1
                if window[c2]! < needs[c2]! {
                    match -= 1
                }
            }
            left += 1
        }
    }
    return rs
}
