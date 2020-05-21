//
//  AppDelegate.swift
//  BinaryTree
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
//        let node = create(array: [])
//        let sort = inOrder(root: node)
//        print(sort)
//        let r = isVaildBST(root: node, min: nil, max: nil)
//        print(r)
//        let n = lowestCommon(root: node, p: TreeNode(data: 2), q: TreeNode(data: 4))
//        print(n)
//        let b = lowestCommonWithBST(root: node, p: TreeNode(data: 2), q: TreeNode(data: 4))
//        print(b)
        recrision(level: 3)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

