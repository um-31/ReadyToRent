//
//  PropertyBookingViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-22.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class PropertyBookingViewController: UIViewController {

    var property: Property?
    @IBOutlet weak var imgPropertyImage: UIImageView!
    @IBOutlet weak var lblPropertyId: UILabel!
    @IBOutlet weak var lblPropertyAddress: UILabel!
    @IBOutlet weak var lblPropertyRent: UILabel!
    @IBOutlet weak var lblArea: UILabel!
    @IBOutlet weak var lblRooms: UILabel!
    @IBOutlet weak var lblPropertyType: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.lblPropertyId.text = "Property Id: \((property!.propertyId)!)"
        self.lblPropertyAddress.text = "Address: \((property!.propertyAddress)!)"
        self.lblPropertyRent.text = "Rent: \((property!.propertyRent)!)"
        self.lblArea.text = "Area: \((property!.area)!)"
        self.imgPropertyImage.image = UIImage(named: (property!.propertyImage)!)
        self.lblRooms.text = "No Of Rooms: \((property!.numberOfRooms)!)"
        self.lblPropertyType.text = "Property Type: \((property!.propertyType)!)"

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBookProperty(_ sender: Any) {
        Objects.loadStaticUsers()
        print(Objects.staticUsers[5])
        
    }
    
}
