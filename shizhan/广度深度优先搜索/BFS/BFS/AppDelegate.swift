//
//  AppDelegate.swift
//  BFS
//
//  Created by DSperson on 2020/5/22.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let node = create(array: [])
//        printLevel(node: node)
//        printRecursiveDepath(node: node)
//        bfsLevelPrint(node: node)
//        let n = maxDepth(root: node)
//        
//        let m = minDepth(node: node)
//        print("max depth", n, m)
//        var code = Codec()
//        let n = code.serilize(node)
//        let cc = code.deserialize(n)
//        print(cc)
        var n77 = "0"..."9"
        var c = "a"..."z"
        var ss = "dsdsdsds777,sss"
        var n = "0"..."9"
//        var c = "a"..."z"
//        isPalindrome("A man, a plan, a canal: Panama")
        
       let n6 = lengthOfLongestSubstring("abcb")
        print(n)
        
    }
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var array = Array(s)
        var window: [Character: Int] = [:]
        var l = 0
        var r = 0
        let count = s.count
        /// 最长长度
        var maxLength = 0
        while r < count {
            /// 右边字符串
            let rr = array[r]
            window[rr] = (window[rr] ?? 0) + 1
            r += 1
            /// 如果window中
            while (window[rr] ?? 0) > 1 {
                let lc = array[l]
                window[lc] = window[lc]! - 1
                l += 1
            }
            maxLength = max(maxLength, r - l)
        }
        return maxLength
    }
    // }
     func isPalindrome(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        let n = "0"..."9"
        let c = "a"..."z"
        var left = 0
        var array = Array(s)
        var right = array.count - 1
        while (left <= right) {
            var l = array[left].lowercased()
            var r = array[right].lowercased()
            while (!n.contains(l) && !c.contains(l)) {
                left += 1
                l = array[left].lowercased()
            }
            while (!n.contains(r) && !c.contains(r)) {
                right -= 1
                r = array[right].lowercased()
            }
            left += 1
            right -= 1
            if l != r {
                return false
            }
            
        }
        return true

     }
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

