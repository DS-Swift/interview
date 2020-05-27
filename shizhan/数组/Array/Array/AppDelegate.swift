//
//  AppDelegate.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        var nums1 = [1, 2, 3, 0, 0, 0]
        let m = 3

        let nums2 = [2, 5, 6]
        let n = 3
        merge(&nums1, m, nums2, n)
//        print(nums1)
        
        let b = findData(arr: [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 11])
        print(b)
        
        let v = moreThenHaleNumber(arr: [1, 1, 1, 1, 2, 1, 2, 2, 2, 2, 2, 4, 2])
        print(v)
        
        let c = findCommon(s: [0, 1, 2, 3, 4], v: [1, 3, 5, 7, 9], n: 5)
        print(c)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

