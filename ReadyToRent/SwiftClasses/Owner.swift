//
//  Owner.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Owner {
    let ownerId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String{
        return "\(firstName!) \(lastName!)"
    }
    let email: String?
    let password: String?
    var propertyOwned: [Property]?
    init(ownerId: Int,firstName: String,lastName: String,email: String,password: String,propertyOwned: [Property]) {
        self.ownerId = ownerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.propertyOwned = propertyOwned
        
}
}
