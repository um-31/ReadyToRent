//
//  ShowTenentViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class ShowTenantViewController: UIViewController {

    var propertyBooked: Int = 0
    var tenantProperty: Property?
    
    @IBOutlet weak var lblPropertyAddress: UILabel!
    @IBOutlet weak var lblUserId: UILabel!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblContact: UILabel!
    @IBOutlet weak var lblNoTenant: UILabel!
    var temp = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        showDetailViewController()
        checkAlert()
        print("-------",propertyBooked)
        

    }
    func showDetailViewController() {
        for i in Objects.staticProperties {
            if i.propertyId == propertyBooked {
                tenantProperty = i
                temp = temp + 1
            }
        }
        for j in Objects.staticUsers {
            if j.propertyBooked?.propertyId == tenantProperty!.propertyId {
                lblPropertyAddress.text = "Property Address: \((tenantProperty?.propertyAddress)!)"
                lblUserId.text = "User Id: \((j.userId)!)"
                lblUserName.text = "Name: \((j.fullName))"
                lblEmail.text = "Email: \((j.email)!)"
                lblContact.text = "Phone No. : \((j.contact)!)"
                temp = temp + 1
            }

        }
        
    }
    func checkAlert() {
        if temp == 0 {
            lblNoTenant.text = "Your Property Is Not Booked Yet"
        }
    }

}
