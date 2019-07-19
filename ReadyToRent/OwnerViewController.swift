//
//  OwnerViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class OwnerViewController: UIViewController {
    
    var ownerId : Int = 0
    var owner : Owner?
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblOwnerId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadOwner()
        lblFullName.text = "Name: \(owner!.fullName)"
        lblOwnerId.text = "Owner Id: \(owner!.ownerId!)"

        // Do any additional setup after loading the view.
    }
    
    func loadOwner() {
        for i in Objects.staticOwners
        {
            if(i.ownerId == ownerId)
            {
                owner = i
            }
        }
    }

}
