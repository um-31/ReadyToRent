//
//  ViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-07.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class UserLoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    var users: [User] = []
    var owners: [Owner] = []
    var temp: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        users = userArray()
        
    }
    func ownerArray() -> [Owner] {
        
        var tempOwner: [Owner] = []
        
        //Owner Objects
        let owner1: Owner = Owner.init(ownerId: 21, firstName: "Udhay", lastName: "Mahajan", email: "udhay1@gmail.com", password: "123456", propertyOwned: [property1,property2])
        let owner2: Owner = Owner.init(ownerId: 22, firstName: "Ujwal", lastName: "Arora", email: "ujwal1@gmail.com", password: "123456", propertyOwned: [property2])
        let owner3: Owner = Owner.init(ownerId: 23, firstName: "Gurwinder", lastName: "Singh", email: "gurwinder1@gmail.com", password: "123456", propertyOwned: [property3])
        
        tempOwner.append(owner1)
        tempOwner.append(owner2)
        tempOwner.append(owner3)
        
        return tempOwner
    }
    func userArray() -> [User]{
        var tempUser: [User] = []
        
        
        //Property Objects
        let property1: Property = Property.init(propertyId: 11, propertyAddress: "64 BEDLE AVE", propertyRent: 550.00, area: 111.2)
        let property2: Property = Property.init(propertyId: 12, propertyAddress: "1 abc Dr", propertyRent: 600.00, area: 115.7)
        let property3: Property = Property.init(propertyId: 13, propertyAddress: "3 abc Dr", propertyRent: 700.00, area: 150.7)
        
        //User Objects
        let user1: User = User.init(userId: 1, firstName: "Udhay", lastName: "Mahajan", email: "admin1@gmail.com", password: "123456", propertyBooked: property1)
        let user2: User = User.init(userId: 2, firstName: "Ujwal", lastName: "Arora", email: "ujwal@gmail.com", password: "123456", propertyBooked: property2)
        let user3: User = User.init(userId: 3, firstName: "Gurwinder", lastName: "Singh", email: "gurwinder@gmail.com", password: "123456", propertyBooked: property3)
        
        
        
        tempUser.append(user1)
        tempUser.append(user2)
        tempUser.append(user3)
        
        return tempUser
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        for i in users{
            if txtUserName.text == i.email && txtPassword.text == i.password {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let  userVC = storyBoard.instantiateViewController(withIdentifier: "OwnerViewIdentifier") as! OwnerViewController
                self.present(userVC, animated: true, completion: nil)
                temp = temp + 1
            }
        }
        for i in owners {
            
        }
        if temp == 0 {
            let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    

}

