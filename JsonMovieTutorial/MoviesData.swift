//
//  MoviesData.swift
//  JsonMovieTutorial
//
//  Created by Allen Lai on 13/03/2015.
//  Copyright (c) 2015 TheCodingCat. All rights reserved.
//

import UIKit

class MoviesData: NSObject {
    private var movies: NSArray = NSArray()
    private let movieURL: NSURL = NSURL(string: "http://cloud.culture.tw/frontsite/trans/SearchShowAction.do?method=doFindTypeJ&category=8")!

    override init() {
        super.init()
        getMovieDataFromArray()
    }

    private func getMovieDataFromArray() {
        let data = NSData(contentsOfURL: movieURL, options: NSDataReadingOptions.DataReadingUncached, error: nil)
        let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil)
        movies = NSArray(array: json as NSArray)
    }
    
    func getMovieList() -> NSArray {
        var list: [MainData] = Array()
        
        for result in movies {
            var mainData = MainData()
            var movieDetail = MoviesDetail(movies: result as NSDictionary)
            if movieDetail.showInfo?.count > 0 {
                var movieShowInfo = MoviesShowInfo(showInfo: movieDetail.showInfo?.firstObject as NSDictionary)
                mainData.time = movieShowInfo.time!
                mainData.location = movieShowInfo.location!
                mainData.name = movieShowInfo.locationName!
                mainData.latitude = movieShowInfo.latitude!
                mainData.longitude = movieShowInfo.longitude!
            }
            mainData.title = movieDetail.title!
            mainData.showTimeList = movieDetail.showInfo!
            mainData.descriptionFilterHtml = movieDetail.descriptionFilterHtml!
            
            list.append(mainData)
        }
        return list
    }
}
