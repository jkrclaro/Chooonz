//
//  ChooonzTableViewController.swift
//  Chooonz
//
//  Created by John Claro on 17/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ChooonzTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var chooonzs: [Chooonz] = [Chooonz]()
    var filteredChooonz = [Chooonz]()
    var searchController: UISearchController!
//    var selectedChooonz = Chooonz(songTitle: "", youtubeThumbnail: UIImage(named: "PhotoNotAvailable")!, youtubeID: "", artistName: "", artistImage: UIImage(named: "PhotoNotAvailable")!, artistDescription: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chooonzs = ChooonzModel().getChooonzs()
        print(self.chooonzs)
        self.searchController = UISearchController(searchResultsController: nil) // Instantiates the search controller
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false // Disables dimming of background when search bar is pressed
        self.tableView.tableHeaderView = self.searchController.searchBar // Converts the table view's header to the search controller's search bar.
        definesPresentationContext = true // Removes the blank space between the search bar and the table view
        self.tableView.reloadData()
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
        // Filter through the songs
        self.filteredChooonz = self.chooonzs.filter { (chooonz: Chooonz) -> Bool in
            if chooonz.songTitle.lowercaseString.containsString(self.searchController.searchBar.text!.lowercaseString) {
                return true
            } else {
                return false
            }
        }
        
        // Update the results table view
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.searchController.active {
            return self.filteredChooonz.count
        } else {
            return self.chooonzs.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChooonzCell", forIndexPath: indexPath) as! ChooonzCell
        
        if self.searchController.active {
            cell.songTitle?.text = self.filteredChooonz[indexPath.row].songTitle
            cell.artistName?.text = self.filteredChooonz[indexPath.row].artistName
            
            let youtubeThumbnailURL = "https://i1.ytimg.com/vi/" + self.filteredChooonz[indexPath.row].youtubeID + "/maxresdefault.jpg"
            Alamofire.request(.GET, youtubeThumbnailURL)
                .responseImage { response in
                    if let image = response.result.value {
                        cell.youtubeThumbnail?.image = image
                    }
            }
        
            cell.artistImage?.image = self.filteredChooonz[indexPath.row].artistImage
            // Give image rounded corners
            cell.artistImage.layer.cornerRadius = cell.artistImage.frame.size.width / 2
            cell.artistImage.clipsToBounds = true
            
        } else {
            cell.songTitle?.text = self.chooonzs[indexPath.row].songTitle
            cell.artistName?.text = self.chooonzs[indexPath.row].artistName
            
            let youtubeThumbnailURL = "https://i1.ytimg.com/vi/" + self.chooonzs[indexPath.row].youtubeID + "/maxresdefault.jpg"
            Alamofire.request(.GET, youtubeThumbnailURL)
                .responseImage { response in
                    if let image = response.result.value {
                        cell.youtubeThumbnail?.image = image
                    }
            }
            
            cell.artistImage?.image = self.chooonzs[indexPath.row].artistImage
            // Give image rounded corners
            cell.artistImage.layer.cornerRadius = cell.artistImage.frame.size.width / 2
            cell.artistImage.clipsToBounds = true
        }

        return cell
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        // Retrieves the song the user selected
//        print("Hi")
//    }
}
