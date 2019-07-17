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
        if self.txtUserName.text == "admin@gmail.com" && self.txtPassword.text == "123456" {
            if switchRemember.isOn {
                let userDefault = UserDefaults.standard
                userDefault.setValue(txtUserName.text, forKey: "userEmail")
                userDefault.set(txtPassword.text, forKey: "userPassword")
            }else{
            }
            
        }else{
            let alert = UIAlertController(title: "ERROR", message: "Invalid Username or Password", preferredStyle: UIAlertController.Style.alert)
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
                print("Alert OK")
            })
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    

}

