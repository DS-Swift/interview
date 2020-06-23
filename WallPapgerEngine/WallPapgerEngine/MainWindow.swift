//
//  MainWindow.swift
//  WallPapgerEngine
//
//  Created by DSperson on 2020/6/10.
//  Copyright © 2020 BAT. All rights reserved.
//

import Cocoa

class MainWindow: NSWindow {
    override func awakeFromNib() {
        super.awakeFromNib()
        delegate = self
    }
    override var frame: NSRect {
        let size = NSScreen.main!.frame.size
        return CGRect(x: 0, y: 0, width: size.width, height: size.height)
    }

}
extension MainWindow: NSWindowDelegate {
    func windowWillResize(_ sender: NSWindow, to frameSize: NSSize) -> NSSize {
        return NSScreen.main!.frame.size
    }
}
