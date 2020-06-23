//
//  AppDelegate.swift
//  Array
//
//  Created by DSperson on 2020/5/26.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

struct CertifiedPuppy1 {
  let age: Int
  let isTrained: Bool
  let isCertified: Bool
} // Int, Bool, Bool
struct CertifiedPuppy2 {
  let isTrained: Bool
  let age: Int
  let isCertified: Bool
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        var nums1 = [1, 2, 3, 0, 0, 0]
        let m = 3

        let nums2 = [2, 5, 6]
        let n = 3
        merge(&nums1, m, nums2, n)
//        print(nums1)
        
        let b = findData(arr: [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 11])
        print(b)
        
        let v = moreThenHaleNumber(arr: [1, 1, 1, 1, 2, 1, 2, 2, 2, 2, 2, 4, 2])
        print(v)
        
        let c = findCommon(s: [0, 1, 2, 3, 4], v: [1, 3, 5, 7, 9], n: 5)
        print(c)
        
//        let size = sizeof(Struct)
        let m222 = MemoryLayout<Int>.size
        
        let nn = CertifiedPuppy2(isTrained: true, age: 10, isCertified: true)
        let m333 = MemoryLayout.size(ofValue: nn)
        let m444 = MemoryLayout.stride(ofValue: nn)
        let m55  = MemoryLayout.alignment(ofValue: nn)
        print("17 24 8")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

