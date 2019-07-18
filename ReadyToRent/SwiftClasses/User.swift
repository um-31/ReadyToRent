//
//  User.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class User {
    let userId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String{
        return "\(firstName!) \(lastName!)"
    }
    let email: String?
    let password: String?
    var propertyBooked: Property?
    init(userId: Int,firstName: String,lastName: String,email: String,password: String,propertyBooked: Property) {
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.propertyBooked = propertyBooked
        
}
}
