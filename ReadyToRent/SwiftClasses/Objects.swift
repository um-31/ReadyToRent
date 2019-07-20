//
//  Objects.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-18.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Objects {
    
    static public var staticOwners : [Owner] = []
    static public var staticProperties : [Property] = []
    static public var staticUsers : [User] = []
    
    
    static func loadStaticOwners() {
        
        //Owner Objects
        let owner1: Owner = Owner.init(ownerId: 21, firstName: "Udhay", lastName: "Mahajan", email: "owner1@gmail.com", password: "123456", propertyOwned: [staticProperties[0],staticProperties[1],staticProperties[2]])
        staticOwners.append(owner1)
        let owner2: Owner = Owner.init(ownerId: 22, firstName: "Ujwal", lastName: "Arora", email: "owner2@gmail.com", password: "123456", propertyOwned: [staticProperties[2]])
        staticOwners.append(owner2)
        let owner3: Owner = Owner.init(ownerId: 23, firstName: "Gurwinder", lastName: "Singh", email: "owner3@gmail.com", password: "123456", propertyOwned: [staticProperties[0]])
        staticOwners.append(owner3)
    }
    
    static func loadStaticProperties() {
        
        //Property Objects
        let property1: Property = Property.init(propertyId: 11, propertyAddress: "64 BEDLE AVE", propertyRent: 550.00, area: 111.2)
        staticProperties.append(property1)
        let property2: Property = Property.init(propertyId: 12, propertyAddress: "1 abc Dr", propertyRent: 600.00, area: 115.7)
        staticProperties.append(property2)
        let property3: Property = Property.init(propertyId: 13, propertyAddress: "3 abc Dr", propertyRent: 700.00, area: 150.7)
        staticProperties.append(property3)
    }
    
    static func loadStaticUsers()
    {
        //User Objects
        let user1: User = User.init(userId: 1, firstName: "Udhay", lastName: "Mahajan", email: "admin1@gmail.com", password: "123456", propertyBooked: staticProperties[0])
        staticUsers.append(user1)
        let user2: User = User.init(userId: 2, firstName: "Ujwal", lastName: "Arora", email: "ujwal@gmail.com", password: "123456", propertyBooked: staticProperties[1])
        staticUsers.append(user2)
        let user3: User = User.init(userId: 3, firstName: "Gurwinder", lastName: "Singh", email: "gurwinder@gmail.com", password: "123456", propertyBooked: staticProperties[2])
        staticUsers.append(user3)
    }
    
}
