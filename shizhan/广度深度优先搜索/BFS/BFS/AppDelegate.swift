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
        let n = maxDepth(root: node)
        
        let m = minDepth(node: node)
        print("max depth", n, m)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

