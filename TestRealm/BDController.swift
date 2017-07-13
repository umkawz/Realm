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
        let UD3 = UserData.getUserObject(id: 2, idCard: 2, Date: "UD3")
        
        let CI1 = Card.getCardObject(idCard: 0, idLayout: 0, Description: "Card1", UData: [UD1])
        let CI2 = Card.getCardObject(idCard: 1, idLayout: 0, Description: "Card2", UData: [UD2])
        let CI3 = Card.getCardObject(idCard: 2, idLayout: 0, Description: "Card3", UData: [UD3])
        
//        let TN1 = TreeNode.getTreeNodeObject(idTreeNode: 0, CardId: 0, Back: <#T##[TreeNode]#>, Right: <#T##[TreeNode]#>, Left: <#T##[TreeNode]#>)
//        let TN2 = TreeNode.getTreeNodeObject(idTreeNode: 1, CardId: 1, Back: [TN1], Right: <#T##[TreeNode]#>, Left: <#T##[TreeNode]#>)
//        let TN3 = TreeNode.getTreeNodeObject(idTreeNode: 1, CardId: 1, Back: [TN1], Right: <#T##[TreeNode]#>, Left: <#T##[TreeNode]#>)
//        TN1.Left=TN2
//        TN1.Right=TN3
        
        let members = [UD1, UD2,UD3,CI1,CI2,CI3]
        
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
            let requestsFromRealm = realm.objects(Card)//.filter("id == 0") пока костыль
                let array = Array(requestsFromRealm)
            print(array)
            }
        }
}
