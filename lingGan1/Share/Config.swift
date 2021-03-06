//
//  Config.swift
//  lingGan1
//
//  Created by DSperson on 2020/6/3.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation
import IceCream
import RealmSwift
import CloudKit
class Config {
    static var syncEngine: SyncEngine?
    static let containerIdentifier = "iCloud.com.batword.www.lingGan1"
    
    fileprivate static func extractedFunc(_ contain: CKContainer) -> SyncEngine {
        return SyncEngine(objects: [SyncObject<Article>()], databaseScope: .public, container: contain)
    }
    class func setup() {
        let contain = CKContainer(identifier: containerIdentifier)
        
        syncEngine = extractedFunc(contain)
        syncEngine?.pull(completionHandler: { (error) in
            print(error)
        })
    }
}
