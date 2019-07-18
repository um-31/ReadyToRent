//
//  ViewController.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-07.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnLogin(_ sender: Any) {
        if txtUserName.text == "Admin@gmail.com" && txtPassword.text == "123456" {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = storyBoard.instantiateViewController(withIdentifier: "OwnerViewIdentifier") as! OwnerViewController
            self.present(userVC, animated: true, completion: nil)
        }else if txtUserName.text == "admin1@gmail.com" && txtPassword.text == "123456" {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = storyBoard.instantiateViewController(withIdentifier: "UserViewIdentifier") as! UserViewController
            self.present(userVC, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    

}

