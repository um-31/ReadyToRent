//
//  Property.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Property {
    var propertyImage: String?
    var propertyId: Int?
    var propertyAddress: String?
    var propertyRent: Float?
    var area: Float?
    var numberOfRooms: Int?
    var propertyType: String?
    init(propertyId: Int, propertyAddress: String, propertyRent: Float, area: Float, propertyImage: String, propertyType: String, numberOfRooms: Int) {
        self.propertyId = propertyId
        self.propertyAddress = propertyAddress
        self.propertyRent = propertyRent
        self.area = area
        self.propertyImage = propertyImage
        self.numberOfRooms = numberOfRooms
        self.propertyType = propertyType
    }
}
