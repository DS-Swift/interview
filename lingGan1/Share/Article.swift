//
//  Article.swift
//  lingGan1
//
//  Created by DSperson on 2020/6/3.
//  Copyright © 2020 BAT. All rights reserved.
//

import Foundation
import RealmSwift
import IceCream
import CloudKit
enum ArticleState {
    case draft
    case release
    case deleted
}
class Article: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var content: String = ""
//    var state: ArticleState = .draft
    override class func primaryKey() -> String? {
        return "id"
    }
}

extension Article: CKRecordConvertible {
    var isDeleted: Bool {
        return false
    }
    static var databaseScope: CKDatabase.Scope {
        return .public
    }
//    static var zoneID: CKRecordZone.ID {
//        return CKRecordZone.default().zoneID
//    }
    
    
}
extension Article: CKRecordRecoverable {
    
}
