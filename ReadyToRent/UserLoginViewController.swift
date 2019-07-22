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
    var users : [User] = []
    var properties : [Property] = []
    var Owners : [Owner] = []
    var temp: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Clean up text fields as we first launch login screen
        txtUserName.text = ""
        txtPassword.text = ""
        
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
                ownerVC.ownerId = temp
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
    
    // Function for displaying AlertBox with Custom Message
    
    func showAlerBox(msg : String)  {
        let alertController = UIAlertController(title: "Ready To Rent", message:
            msg, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    // Function for getting Data stored in user default by key
    func getRememberMeValues()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            txtUserName.text = email
            
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                txtPassword.text = pwd
            }
        }
        switchRemember.setOn(true, animated: true)
    }
    
    // Function for Storing Data in Userdefault by key
    
    func setRememberMeValues()
    {
        if switchRemember.isOn {
            userDefault.set(self.txtUserName.text, forKey: "email")
            userDefault.set(self.txtPassword.text, forKey: "password")
        }else{
            userDefault.removeObject(forKey: "email")
            userDefault.removeObject(forKey: "password")
        }
    }

}

