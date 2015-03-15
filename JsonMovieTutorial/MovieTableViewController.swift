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
    
    var movieList = NSArray()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        var moviesData = MoviesData()
//        var movieList = movieData.getMovieDataFromArray()
//        for result in movieList {
//          titleStringArray.addObject(result.objectForKey("title")!)
//          webString.addObject(result.objectForKey("webSales")!)
//        }
        
        movieList = moviesData.getMovieList()
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      return movieList.count
//        return titleStringArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

//        cell.textLabel?.text = titleStringArray[indexPath.row] as NSString
//        cell.textLabel?.text = titleStringArray.objectAtIndex(indexPath)
//      
//        cell.detailTextLabel?.text = webString[indexPath.row] as NSString
        
        cell.textLabel?.text = movieList[indexPath.row].title
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let path = self.tableView.indexPathForSelectedRow()
            var data = movieList[path!.row] as MainData
            
            (segue.destinationViewController as DetailTableViewController).movieDetail = data
        }
    }
    

}
