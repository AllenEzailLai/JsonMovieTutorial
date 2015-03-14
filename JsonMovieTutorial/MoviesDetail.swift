//
//  MoviesDetail.swift
//  JsonMovieTutorial
//
//  Created by Allen Lai on 14/03/2015.
//  Copyright (c) 2015 TheCodingCat. All rights reserved.
//

import UIKit

class MoviesDetail: NSObject {
  var title: String?
  var descriptionFilterHtml: String?
  var webSales: NSURL?
  var souceWebName: String?
  var showInfo: NSArray?
  
  init(movies: NSDictionary) {
    title = movies.objectForKey("title") as? String
    descriptionFilterHtml = movies.objectForKey("descriptionFilterHtml") as? String
    souceWebName = movies.objectForKey("souceWebName") as? String
    showInfo = movies.objectForKey("showInfo") as? NSArray
    if let web = movies.objectForKey("webSales") as? String {
      webSales =  NSURL(string: web)
    }    
  }
}
