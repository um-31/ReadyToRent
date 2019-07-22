//
//  BookPropertyTableViewCell.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-21.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class BookPropertyTableViewCell: UITableViewCell {

    @IBOutlet weak var lblPropertyId: UILabel!
    @IBOutlet weak var lblAdrees: UILabel!
    var propertyId: Int = 9
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func setLable(property: Property) {
        lblPropertyId.text = "Propert Id: \(property.propertyId!)"
        lblAdrees.text = "Address: \((property.propertyAddress)!)"
    }


}
