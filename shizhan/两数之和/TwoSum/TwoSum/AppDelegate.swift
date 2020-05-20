//
//  AppDelegate.swift
//  TwoSum
//
//  Created by DSperson on 2020/5/20.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
       let tuple = twoSum(elements: [7, 7, 7, 15], target: 9)
        print(tuple)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

