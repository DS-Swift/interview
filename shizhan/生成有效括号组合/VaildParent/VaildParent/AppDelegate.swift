//
//  AppDelegate.swift
//  VaildParent
//
//  Created by ds on 2020/5/23.
//  Copyright © 2020 ds. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let v = Solution()
        let s = v.vaildParent(n: 3)
        print(s)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

