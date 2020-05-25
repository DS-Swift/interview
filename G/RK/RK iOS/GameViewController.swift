//
//  GameViewController.swift
//  RK iOS
//
//  Created by DSperson on 2020/5/25.
//  Copyright © 2020 BAT. All rights reserved.
//

import UIKit
//import RealityKit
import ARKit
import SceneKit
class GameViewController: UIViewController {
    
//    @IBOutlet var arView: ARView!
    var scnView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scnView = ARSCNView(frame: view.bounds)
        scnView.debugOptions = .showFeaturePoints
//        scnView.automaticallyUpdatesLighting = true
        /// 增加补光
        scnView.autoenablesDefaultLighting = true
        /// 允许开启相机控制手势
        scnView.allowsCameraControl = true
        /// 是否开启实时渲染
        scnView.rendersContinuously = false
        
        view.addSubview(scnView)
        scnView.delegate = self

        let config = ARWorldTrackingConfiguration()
        
        config.planeDetection = .horizontal
        
        config.isLightEstimationEnabled = true
        
        scnView.session.run(config, options: .resetTracking)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let hit = scnView.hitTest(scnView.center, types: [.existingPlaneUsingExtent]).first?.anchor else {
            return
        }
//        scnView.session.add(anchor: hit)
        
    }
}

extension GameViewController : ARSCNViewDelegate {
//    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
//        let geometry = SCNPlane(width: 100, height: 100)
//        let node = SCNNode(geometry: geometry)
//        return node
//    }

    
    /**
     Called when a new node has been mapped to the given anchor.
     
     @param renderer The renderer that will render the scene.
     @param node The node that maps to the anchor.
     @param anchor The added anchor.
     */
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard let planAnchor = anchor as? ARPlaneAnchor else {
            return
        }
        let plan = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0)
        plan.name = "DS"
        plan.firstMaterial?.diffuse.contents  = UIColor.green
        let planNode = SCNNode(geometry: plan)
        node.addChildNode(planNode)
        print("didAdd", node)
    }

    
    /**
     Called when a node will be updated with data from the given anchor.
     
     @param renderer The renderer that will render the scene.
     @param node The node that will be updated.
     @param anchor The anchor that was updated.
     */
     func renderer(_ renderer: SCNSceneRenderer, willUpdate node: SCNNode, for anchor: ARAnchor) {
        
    }

    
    /**
     Called when a node has been updated with data from the given anchor.
     
     @param renderer The renderer that will render the scene.
     @param node The node that was updated.
     @param anchor The anchor that was updated.
     */
     func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        print("update", node)
    }

    
    /**
     Called when a mapped node has been removed from the scene graph for the given anchor.
     
     @param renderer The renderer that will render the scene.
     @param node The node that was removed.
     @param anchor The anchor that was removed.
     */
     func renderer(_ renderer: SCNSceneRenderer, didRemove node: SCNNode, for anchor: ARAnchor) {
        
    }
}
