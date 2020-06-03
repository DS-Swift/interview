//
//  AppDelegate.swift
//  lingGan1
//
//  Created by DSperson on 2020/6/3.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa
import IceCream
import RealmSwift
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        Config.setup()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

