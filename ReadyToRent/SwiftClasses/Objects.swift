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
        let owner1: Owner = Owner.init(ownerId: 21, firstName: "Udhay", lastName: "Mahajan", email: "owner1@gmail.com", password: "123456", propertyOwned: [staticProperties[0],staticProperties[1],staticProperties[2],staticProperties[6],staticProperties[8],staticProperties[9]])
        staticOwners.append(owner1)
        let owner2: Owner = Owner.init(ownerId: 22, firstName: "Ujwal", lastName: "Arora", email: "owner2@gmail.com", password: "123456", propertyOwned: [staticProperties[3],staticProperties[7]])
        staticOwners.append(owner2)
        let owner3: Owner = Owner.init(ownerId: 23, firstName: "Gurwinder", lastName: "Singh", email: "owner3@gmail.com", password: "123456", propertyOwned: [staticProperties[4]])
        staticOwners.append(owner3)
        let owner4: Owner = Owner.init(ownerId: 24, firstName: "Danish", lastName: "Dev", email: "owner4@gmail.com", password: "123456", propertyOwned: [staticProperties[5]])
        staticOwners.append(owner4)
    }
    
    static func loadStaticProperties() {
        
        //Property Objects
        let property1: Property = Property.init(propertyId: 11, propertyAddress: "64 BEDLE AVE", propertyRent: 2550.00, area: 111.2,propertyImage: "property1.PNG", propertyType: "Basement", numberOfRooms: 3)
        staticProperties.append(property1)
        let property2: Property = Property.init(propertyId: 12, propertyAddress: "1 abc Dr", propertyRent: 2600.00, area: 115.7,propertyImage: "property2.PNG", propertyType: "House", numberOfRooms: 2)
        staticProperties.append(property2)
        let property3: Property = Property.init(propertyId: 13, propertyAddress: "3 abc Dr", propertyRent: 1700.00, area: 150.7,propertyImage: "property3.PNG", propertyType: "Basement", numberOfRooms: 2)
        staticProperties.append(property3)
        let property4: Property = Property.init(propertyId: 14, propertyAddress: "8 Sonora Terrace", propertyRent: 1850.00, area: 159.75,propertyImage: "property4.PNG", propertyType: "Basement", numberOfRooms: 2)
        staticProperties.append(property4)
        let property5: Property = Property.init(propertyId: 15, propertyAddress: "3 Lakewood Ave", propertyRent: 3700.00, area: 700.7,propertyImage: "property5.PNG", propertyType: "House", numberOfRooms: 5)
        staticProperties.append(property5)
        let property6: Property = Property.init(propertyId: 16, propertyAddress: "189 Tower Dr", propertyRent: 2700.00, area: 200.7,propertyImage: "property6.PNG", propertyType: "Basement", numberOfRooms: 3)
        staticProperties.append(property6)
        let property7: Property = Property.init(propertyId: 17, propertyAddress: "180 Tower Dr", propertyRent: 1300.00, area: 140.7,propertyImage: "property7.PNG", propertyType: "House", numberOfRooms: 2)
        staticProperties.append(property7)
        let property8: Property = Property.init(propertyId: 18, propertyAddress: "12 Sonora Terrace", propertyRent: 1500.00, area: 160.00,propertyImage: "property8.PNG", propertyType: "Basement", numberOfRooms: 2)
        staticProperties.append(property8)
        let property9: Property = Property.init(propertyId: 19, propertyAddress: "19 Gustav Crescent", propertyRent: 1000.00, area: 100.7,propertyImage: "property9.PNG", propertyType: "Room Only", numberOfRooms: 1)
        staticProperties.append(property9)
        let property10: Property = Property.init(propertyId: 20, propertyAddress: "22 Gustav Crescent", propertyRent: 3500.00, area: 450.0,propertyImage: "property10.PNG", propertyType: "House", numberOfRooms: 5)
        staticProperties.append(property10)
    }
    
    static func loadStaticUsers()
    {
        //User Objects
        let user1: User = User.init(userId: 1, firstName: "Udhay", lastName: "Mahajan", email: "user1@gmail.com", password: "123456", propertyBooked: staticProperties[0], contact: "6478667679")
        staticUsers.append(user1)
        let user2: User = User.init(userId: 2, firstName: "Ujwal", lastName: "Arora", email: "user2@gmail.com", password: "123456", propertyBooked: staticProperties[1], contact: "6477193418")
        staticUsers.append(user2)
        let user3: User = User.init(userId: 3, firstName: "Gurwinder", lastName: "Singh", email: "user3@gmail.com", password: "123456", propertyBooked: staticProperties[2], contact: "4376515982")
        staticUsers.append(user3)
    }
    
}
