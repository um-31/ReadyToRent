//
//  UserBookedViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-19.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class UserBookedViewController: UIViewController {

    var userId: Int = 0
    var user: User?
    var property: Property?
    @IBOutlet weak var imgBookedProperty: UIImageView!
    @IBOutlet weak var lblPropertyId: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPropertyRent: UILabel!
    @IBOutlet weak var lblArea: UILabel!
    @IBOutlet weak var lblRooms: UILabel!
    @IBOutlet weak var lblType: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUser()
        loadProperty()
        self.lblPropertyId.text = "Property Id: \((property!.propertyId)!)"
        self.lblAddress.text = "Address: \((property!.propertyAddress)!)"
        self.lblPropertyRent.text = "Rent: \((property!.propertyRent)!)"
        self.lblArea.text = "Area: \((property!.area)!)"
        self.imgBookedProperty.image = UIImage(named: (property!.propertyImage)!)
        self.lblRooms.text = "No Of Rooms: \((property!.numberOfRooms)!)"
        self.lblType.text = "Property Type: \((property!.propertyType)!)"
        

        // Do any additional setup after loading the view.
    }
    func loadUser() {
        for i in Objects.staticUsers
        {
            if(i.userId == userId)
            {
                user = i
            }
        }
    }
    func loadProperty() {
        for i in Objects.staticProperties
        {
            if(i.propertyId == user?.propertyBooked?.propertyId)
            {
                property = i
            }
        }
    }
    

    

}
