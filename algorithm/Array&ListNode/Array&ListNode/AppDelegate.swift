//
//  AppDelegate.swift
//  Array&ListNode
//
//  Created by DSperson on 2020/5/11.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let node = Node.generate(array: [3, 1, 2, 4, 5])
        let r = Node.reserver(node: node)
        print(node, r)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

