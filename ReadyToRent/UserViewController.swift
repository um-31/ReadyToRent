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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadUser()
        print(user!.userId,user!.fullName)
        

        // Do any additional setup after loading the view.
    }
    
    func loadUser()
    {
        for i in Objects.staticUsers
        {
            if(i.userId == userId)
            {
                user = i
            }
        }
    }

}
