//
//  PropertyTableViewCell.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-19.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class PropertyTableViewCell: UITableViewCell {

    @IBOutlet weak var lblPropertyId: UILabel!
    @IBOutlet weak var lblPropertyAddress: UILabel!
    @IBOutlet weak var lblPropertyRent: UILabel!
    var propertyId: Int = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLable(property: Property) {
        lblPropertyId.text = "Property Id: \(property.propertyId!)"
        lblPropertyAddress.text = "Address: \((property.propertyAddress)!)"
        lblPropertyRent.text = "Rent: \((property.propertyRent)!)"
    }
    }


