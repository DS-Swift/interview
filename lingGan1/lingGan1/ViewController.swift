//
//  ViewController.swift
//  lingGan1
//
//  Created by DSperson on 2020/6/3.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa
import CloudKit
import RealmSwift

struct Rect {
    var origin = NSPoint(x: 0, y: 0)
    var size = CGSize(width: 10, height: 10)
    var o: Bool
    func xxx() -> Int32 {
        return 0
    }
}

extension Rect {
    init(center: CGPoint) {
        self.init(origin : .zero,size: .zero, o: false)
    }
//    func xxx() -> Int32 {
//        return 1
//    }
    subscript(v: Int) -> Int {
        return 0
    }
}
struct Em {
    
}
class CC {
    var ll: Bool = true
    var l: Int = 0
    
//    var mm: Int = 0
}
class ViewController: NSViewController {
    
    var viewA = SSView(frame: NSRect(x: 0, y: 0, width: 300, height: 300))
    var viewB = SSView(frame: NSRect(x: 100, y: 100, width: 100, height: 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewA.wantsLayer = true
        viewA.layer?.backgroundColor = NSColor.red.cgColor
        view.addSubview(viewA)
        
        viewB.wantsLayer = true
        viewB.layer?.backgroundColor = NSColor.green.cgColor
        viewA.addSubview(viewB)
        let m = Rect(center: CGPoint.zero)
        let mm = m[0]
        let mb = MemoryLayout<CC>.size
        print(mm)
        let ll = class_getInstanceSize(CC.self)
        print("l")
        
    }

    override func rightMouseDown(with event: NSEvent) {
        viewA.bounds = CGRect(x: -100, y: -100, width: 300, height: 300)
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController {
    var name: String {
        get {
            return "33"
        }
    }
    
}



