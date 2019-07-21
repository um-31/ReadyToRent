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
    @IBOutlet weak var imgProperty: UIImageView!
    @IBOutlet weak var lblNoOfRooms: UILabel!
    @IBOutlet weak var lblPropertyType: UILabel!
    var property: Property?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblPropertyID.text = "Property Id: \((property!.propertyId)!)"
        self.lblAddress.text = "Address: \((property!.propertyAddress)!)"
        self.lblPropertyRent.text = "Rent: \((property!.propertyRent)!)"
        self.lblPropertyArea.text = "Area: \((property!.area)!)"
        self.imgProperty.image = UIImage(named: (property!.propertyImage)!)
        self.lblNoOfRooms.text = "No Of Rooms: \((property!.numberOfRooms)!)"
        self.lblPropertyType.text = "Property Type: \((property!.propertyType)!)"
    }
    @IBAction func btnShowTenant(_ sender: Any) {
        let temp = property?.propertyId
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let  ownerVC = storyBoard.instantiateViewController(withIdentifier: "TenantDetailsIdentifier") as! ShowTenantViewController
        ownerVC.propertyBooked = temp!
        self.present(ownerVC, animated: true, completion: nil)
    }
    @IBAction func unwindFromShowTenantScreen(_ sender: UIStoryboardSegue) {
        let s = sender.source as! ShowTenantViewController
    }
    

}
