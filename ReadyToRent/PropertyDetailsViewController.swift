//
//  PropertyDetailsViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-19.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class PropertyDetailsViewController: UIViewController {

    @IBOutlet weak var lblPropertyID: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPropertyRent: UILabel!
    @IBOutlet weak var lblPropertyArea: UILabel!
    var property: Property?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblPropertyID.text = "Property Id: \((property!.propertyId)!)"
        self.lblAddress.text = "Address: \((property!.propertyAddress)!)"
        self.lblPropertyRent.text = "Rent: \((property!.propertyRent)!)"
        self.lblPropertyArea.text = "Area: \((property!.area)!)"

    }

}
