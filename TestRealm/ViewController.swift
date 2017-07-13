//
//  ViewController.swift
//  TestRealm
//
//  Created by iMac on 7/13/17.
//  Copyright © 2017 iMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let BD = BDController()
//        if !UserDefaults.standard.bool(forKey: "db_install") {
//            BD.AddItemDataBase()
//        }
//        BD.loadDB()
        BD.dellDB()
        BD.addItemDataBase()
        BD.loadDB()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

