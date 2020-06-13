//
//  AppDelegate.swift
//  String
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
//       let n = findAnagrams(s: "abccabc", p: "cba")
        let l = longString(str: "abcabcbbadcmlko,/.'\\p")
        print(l)
        let n = stringReserve(str: "abcabcbbadcmlko")
        print(n)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

