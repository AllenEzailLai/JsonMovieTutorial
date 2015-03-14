//
//  MovieTableViewController.swift
//  Starter
//
//  Created by Wayne_Lin on 2015/2/5.
//  Copyright (c) 2015年 TheCodingCat. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
//    var titleStringArray = NSMutableArray()
//    var webString = NSMutableArray()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        var movieData = MoviesData()
//        var movieList = movieData.getMovieDataFromArray()
//        for result in movieList {
//          titleStringArray.addObject(result.objectForKey("title")!)
//          webString.addObject(result.objectForKey("webSales")!)
//        }
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      return 0
//        return titleStringArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

//        cell.textLabel?.text = titleStringArray[indexPath.row] as NSString
//        cell.textLabel?.text = titleStringArray.objectAtIndex(indexPath)
//      
//        cell.detailTextLabel?.text = webString[indexPath.row] as NSString
        return cell
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
    

}
