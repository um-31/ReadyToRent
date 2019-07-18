//
//  Property.swift
//  ReadyToRent
//
//  Created by hhh on 2019-07-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Property {
    var propertyId: Int?
    var propertyAddress: String?
    var propertyRent: Float?
    var area: Float?
    init(propertyId: Int, propertyAddress: String, propertyRent: Float, area: Float) {
        self.propertyId = propertyId
        self.propertyAddress = propertyAddress
        self.propertyRent = propertyRent
        self.area = area
    }
}
