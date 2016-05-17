//
//  ChooonzTableViewController.swift
//  Chooonz
//
//  Created by John Claro on 17/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit

class ChooonzTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var songTitles = ["Such Dumb Luck", "Shake Shake", "I Was Born", "Nothing Lasts Forever", "Tempting Me"]
    var songArtists = ["The Pale", "REWS", "Otherkin", "MKAI", "In The Willows"]
    var songArtistsBio = ["The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track.", "REWS is the Irish/ London based high energy female duo consisting of songstress Shauna Tohill and beat-maker Collette Williams who together are creating a genuine buzz with their brand of ultra catchy high energy alt rock.", "Dublin grunge-pop outfit Otherkin keep the raucous rock vibes going in a world of soulless synth pop.", "All adept players from an early age, MKAI incorporate wandering guitar figure, piano and electronics into songs replete with a strong sense of melody and urgency.", "Formed in 2011 as an acoustic trio, Waterford band In The Willows gained speedy recognition. The band has now evolved to a sextet, still mixing it up across the genres! In The Willows’ debut album saw the group mixing the lines between folk, alternative, pop and rock to create their own heartwarming and aurally fulfilling sound."]
    var songImages = ["the_pale", "news", "otherkin", "mkai", "in_the_willows"]
    
    var filteredSongs = [String]()
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchController = UISearchController(searchResultsController: nil) // Instantiates the search controller
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false // Disables dimming of background when search bar is pressed
        self.tableView.tableHeaderView = self.searchController.searchBar // Converts the table view's header to the search controller's search bar.
        definesPresentationContext = true // Removes the blank space between the search bar and the table view
        self.tableView.reloadData()
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
        // Filter through the songs
        self.filteredSongs = self.songTitles.filter { (songTitle: String) -> Bool in
            if songTitle.lowercaseString.containsString(self.searchController.searchBar.text!.lowercaseString) {
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
            return self.filteredSongs.count
        } else {
            return self.songTitles.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SongCell", forIndexPath: indexPath) as! SongCell
        
        if self.searchController.active {
            cell.songTitle?.text = self.filteredSongs[indexPath.row]
            cell.songArtist?.text = self.filteredSongs[indexPath.row]
            cell.songImage?.image = UIImage(named: self.songImages[indexPath.row])
        } else {
            cell.songTitle?.text = self.songTitles[indexPath.row]
            cell.songArtist?.text = self.songArtists[indexPath.row]
            cell.songImage?.image = UIImage(named: self.songImages[indexPath.row])
        }

        return cell
    }
}