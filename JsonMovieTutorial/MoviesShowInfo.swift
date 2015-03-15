//
//  MoviesShowInfo.swift
//  JsonMovieTutorial
//
//  Created by Allen Lai on 14/03/2015.
//  Copyright (c) 2015 TheCodingCat. All rights reserved.
//

import UIKit

class MoviesShowInfo: NSObject {
  var time: String?
  var location: String?
  var locationName: String?
  var latitude: Double?
  var longitude: Double?
  
  init(showInfo: NSDictionary) {
    time = showInfo.objectForKey("time") as? String
    location = showInfo.objectForKey("location") as? String
    locationName = showInfo.objectForKey("locationName") as? String
    
    latitude = (showInfo.objectForKey("latitude") as? NSString)?.doubleValue
    longitude = (showInfo.objectForKey("longitude") as? NSString)?.doubleValue
  }
}
