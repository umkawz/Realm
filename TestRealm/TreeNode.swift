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
    dynamic var CardId = Int()
    dynamic var Back:TreeNode? = nil
    dynamic var Right:TreeNode? = nil
    dynamic var Left:TreeNode? = nil
    
    override static func primaryKey() -> String?   {
        return "idTreeNode"
    }
    
    static func getTreeNodeObject(
        idTreeNode: Int, CardId: Int, Back: [TreeNode], Right: [TreeNode], Left: [TreeNode]) -> TreeNode {
        let tree = TreeNode()
        tree.CardId = CardId
        tree.idTreeNode = idTreeNode
        tree.Back?.CardId
        tree.Right?.CardId
        tree.Left?.CardId
        return tree
    }
}

