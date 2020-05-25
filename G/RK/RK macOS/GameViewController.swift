//
//  GameViewController.swift
//  RK macOS
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import AppKit
import RealityKit

class GameViewController: NSViewController {
    
    @IBOutlet var arView: ARView!
    
    override func awakeFromNib() {
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
