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
        print(nums1)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

