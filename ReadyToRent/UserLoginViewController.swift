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
    var users : [User] = []
    var properties : [Property] = []
    var Owners : [Owner] = []
    var temp: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Objects.loadStaticProperties()
        properties = Objects.staticProperties
        Objects.loadStaticUsers()
        users = Objects.staticUsers
        Objects.loadStaticOwners()
        Owners = Objects.staticOwners
        print("Properties : ",properties)
        print("Owners : ",Owners)
        print("Users : ",users)
        
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
        for user in users {
            if txtUserName.text == user.email && txtPassword.text == user.password {
                temp = user.userId!
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let  userVC = storyBoard.instantiateViewController(withIdentifier: "UserViewIdentifier") as! UserViewController
                userVC.userId = temp
                self.present(userVC, animated: true, completion: nil)
                
            }
        }
        for owner in Owners {
            if txtUserName.text == owner.email && txtPassword.text == owner.password {
                temp = owner.ownerId!
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let  ownerVC = storyBoard.instantiateViewController(withIdentifier: "OwnerViewIdentifier") as! OwnerViewController
                ownerVC.userId = temp
                self.present(ownerVC, animated: true, completion: nil)
                
            }
        }
        
        if temp == 0 {
            let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }

}

