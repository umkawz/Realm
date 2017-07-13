//
//  UserData.swift
//  TestRealm
//
//  Created by iMac on 7/13/17.
//  Copyright © 2017 iMac. All rights reserved.
//

import Foundation
import RealmSwift

class UserData: Object {
    dynamic var id = Int()
    dynamic var idCard = Int()
    dynamic var Date = String()
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    static func getUserObject(
        id: Int, idCard: Int, Date: String) -> UserData {
            let userData = UserData()
            userData.id = id
            userData.idCard = idCard
            userData.Date = Date
            return userData
        }
}

