//
//  Merge.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation

/// 合并两个有序数组
/// 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
/*
 说明:
 
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 */
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var p = m + n - 1
    var mm = m - 1
    var nn = n - 1
    
    while mm >= 0 && nn >= 0 {
        if nums1[mm] > nums2[nn] {
            nums1[p] = nums1[mm]
            p -= 1
            mm -= 1
        } else {
            nums1[p] = nums2[nn]
            p -= 1
            nn -= 1
        }
    }
    while nn >= 0 {
        nums1[p] = nums2[nn]
        p -= 1
        nn -= 1
    }
}
