//
//  Utilities.swift
//  ReadyToRent
//
//  Created by Gurwinder on 2019-07-22.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

extension String{
    func  isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}

extension String{
    func sizeCheck() -> Bool{
        if self.count < 6 {
            print("Size of password must be equal or greater than 6")
            return false
        }
        return true
    }
}
