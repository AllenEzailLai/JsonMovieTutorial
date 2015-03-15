//
//  MainData.swift
//  JsonMovieTutorial
//
//  Created by Allen Lai on 14/03/2015.
//  Copyright (c) 2015 TheCodingCat. All rights reserved.
//

import UIKit

class MainData: NSObject {
    var descriptionFilterHtml: String
    var showTimeList: NSArray
    var address: String
    var title: String
    var name: String
    var time: String
    var location: String
    var latitude: Double
    var longitude: Double
    
    override init() {
        descriptionFilterHtml = " "
        showTimeList = NSArray()
        address = " "
        title = " "
        name = " "
        time = " "
        location = " "
        latitude = 0.0
        longitude = 0.0
    }
}