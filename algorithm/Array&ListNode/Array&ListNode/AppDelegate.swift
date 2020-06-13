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
        let node = Node.generate(array: [3, 1, 2, 4, 2])
        let node2 = Node(value: 2)
        let next = Node(value: 3)
        let nextNext = Node(value: 4)
        node2.next = next
        next.next = nextNext
        nextNext.next = node2
//        let r = Node.reserver(node: node)
        let n = hasCycle(node: node2)
        print(n)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

