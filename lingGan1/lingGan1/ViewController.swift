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
class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            let a = Article()
            a.content = "12345665432"
            let realm = try! Realm()
            try! realm.write {
                realm.add(a)
            }
            print(a.id)
            
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

