//
//  UserViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    var userId : Int = 0
    var user : User?
    var property: Property?
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblContact: UILabel!
    @IBOutlet weak var lblPropertyBooked: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadUser()
        self.loadProperty()
        self.showUserDetails()

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
    func showUserDetails() {
        lblName.text = "Name: \((user?.fullName)!)"
        lblEmail.text = "Email: \((user?.email)!)"
        lblContact.text = "Ph No. : \((user?.contact)!)"
        lblPropertyBooked.text = "Porperty Booked: \((property?.propertyAddress)!)"
    }
    @IBAction func unwindFromPropertyBooking(_ sender: UIStoryboardSegue) {
        _ = sender.source as! PropertyBookingViewController
    }
    
    
    @IBAction func btnBookProperty(_ sender: Any) {
        if user?.propertyBooked == nil  {
            let temp = user?.userId
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = storyBoard.instantiateViewController(withIdentifier: "UserBookedIdentifier") as! UserBookedViewController
            userVC.userId = temp!
            self.present(userVC, animated: true, completion: nil)
        }
        else {
            let temp = user?.userId
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = storyBoard.instantiateViewController(withIdentifier: "BookPropertyIdentifier") as! BookPropertyViewController
            userVC.userId = temp!
            self.present(userVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func unWindLogoutFromBookPropertyViewScreen(storyboardSegue: UIStoryboardSegue)
    {
        _ = storyboardSegue.source as! BookPropertyViewController
      
    }
    
}
