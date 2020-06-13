//
//  AppDelegate.swift
//  TreeNode
//
//  Created by DSperson on 2020/5/27.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
//        let root = TreeNode.generate(array: [1, 2, 3, 4, 5, 6, 7])
//       findK(root: root)
//        reverse(root: root)
//        cycle()
//        d()
//        find()
//        m()
        re()
    }
    
    func findK<T>(root: TreeNode<T>) {
        let p = findKth(root: root, k: 3)
        print(p)
    }
    func reverse2<T>(root: TreeNode<T>) {
//        reversePrintRecursive(root: root)
        reversePrintStack(root: root)
    }
    func cycle() {
        let root = TreeNode.generateCycle(array: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        let p = cyclePosition(root: root)
        print(p)
    }
    func d() {
        let root = TreeNode.generate(array: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        let p = root.index(p: 1)
//        print(p)
         deleteNode(head: root, p: p!)
        print(root)
    }
    
    func find() {
        let root = TreeNode.generate(array: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        let roo2 = TreeNode.generate(array: [10, 11, 12, 13])
        let p = root.index(p: 1)
        roo2.next = p
        let pp = findFirstCommon(s: root, t: roo2)
        print(pp)
    }
    func m () {
        let root = TreeNode.generate(array: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        let roo2 = TreeNode.generate(array: [0, 2, 5, 10])
        let m = merge(s: root, t: roo2)
        print(m)
    }
    func re() {
        let root = TreeNode.generate(array: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        let p = reverse(node: root)
        
        print(p)
    }
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

