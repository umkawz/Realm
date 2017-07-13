//
//  TreeNode.swift
//  TestRealm
//
//  Created by iMac on 7/13/17.
//  Copyright © 2017 iMac. All rights reserved.
//

import Foundation
import RealmSwift

class TreeNode: Object {
    dynamic var idTreeNode = Int()
    var CardId : Card?
    var Back: TreeNode? = nil
    var Right:TreeNode? = nil
    var Left:TreeNode? = nil
    
    override static func primaryKey() -> String?   {
        return "idTreeNode"
    }
    
    static func getTreeNodeObject(
        idTreeNode: Int, CardId: Card) -> TreeNode {
        let tree = TreeNode()
        tree.CardId = CardId
        tree.idTreeNode = idTreeNode
        return tree
    }
}
