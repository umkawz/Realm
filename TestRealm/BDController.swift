//
//  BDController.swift
//  TestRealm
//
//  Created by iMac on 7/13/17.
//  Copyright © 2017 iMac. All rights reserved.
//

import UIKit
import RealmSwift

class BDController: NSObject {
    func addItemDataBase(){
        let UD1 = UserData.getUserObject(id: 0, idCard: 0, Date: "UD1")
        let UD2 = UserData.getUserObject(id: 1, idCard: 1, Date: "UD2")
        let CI1 = Card.getCardObject(idCard: 0, idLayout: 0, Description: "Card1", UData: UD1)
        let CI2 = Card.getCardObject(idCard: 1, idLayout: 0, Description: "Card2", UData: UD2)
        let TN1 = TreeNode.getTreeNodeObject(idTreeNode: 0, CardId: CI1)
        let TN2 = TreeNode.getTreeNodeObject(idTreeNode: 1, CardId: CI2)
//        TN1.Left = TN2
//        TN2.Back = TN1
        //let members = [UD1, CI1,TN1, UD2, CI2,TN2]
        let members = [TN1, TN2]
        
        //сохраняем наши объекты в хранилище
        let realmInstance = try! Realm()
        try! realmInstance.write {
            for member in members {
                realmInstance.add(member)
            }
        }
        
        //помечаем в Defaults что БД была установлена
        UserDefaults.standard.set(
            true,
            forKey: "db_install"
        )
        
    }
    
    func dellDB(){
        let realm = try! Realm()    
        try! realm.write{
            realm.deleteAll()
        }
    }

    func loadDB(){
        let realm = try! Realm()
        try! realm.write{
            let requestsFromRealm = realm.objects(TreeNode.self)//.filter("id == 0") пока костыль
                let array = Array(requestsFromRealm)
            print(array)
        }
    }
}
