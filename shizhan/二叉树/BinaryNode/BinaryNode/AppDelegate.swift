//
//  AppDelegate.swift
//  BinaryNode
//
//  Created by DSperson on 2020/5/28.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
//        depth()
//        bfs()
//        o()
//        leaf()
        d()
    }
    
    func depth() {
        let node = generate()
        let p = treeDepth(node: node)
        
    }
    func bfs() {
        let node = generate()
        let r = levelOrder(node: node)
//        print(r)
        levelOrderPrint(node: node)
    }
    
    func o() {
        let node = generate()
        let s = Sloution()
        s.preSortRecursive(node: node)
        print("--->")
        s.midSortRecursive(node: node)
        print("--->")
        s.lastSortRecursive(node: node)
        print("-------------")
        s.preOrder(node: node)
        print("--->")
        s.inOrder(node: node)
    }
    func leaf() {
        let node = generate()
        let nu = leafNum(node: node)
        print(nu)
    }
    func d() {
        let node = generate()
//        DFS(node: node)
        let m = BFT(node: node)
        print(m)
        let mm = isVaildBST(root: node, min: nil, max: nil)
        print(mm)
    }
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}

