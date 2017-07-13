//
//  Card.swift
//  TestRealm
//
//  Created by iMac on 7/13/17.
//  Copyright © 2017 iMac. All rights reserved.
//

import Foundation
import RealmSwift

class Card: Object {
    dynamic var idCard = Int()
    dynamic var idLayout = Int()
    dynamic var Description = String()
    var UData : UserData?
    
    override static func primaryKey() -> String?   {
        return "idCard"
    }
    
    static func getCardObject(
        idCard: Int, idLayout: Int, Description: String, UData: UserData) -> Card {
        let card = Card()
        card.idCard = idCard
        card.idLayout = idLayout
        card.Description = Description
        card.UData = UData
        return card
    }
}
