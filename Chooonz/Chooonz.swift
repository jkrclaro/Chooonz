//
//  Chooonz.swift
//  Chooonz
//
//  Created by John Claro on 18/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit

class Chooonz: NSObject {
    
    var songTitle: String
    var youtubeThumbnail: UIImage
    var youtubeID: String
    var artistName: String
    var artistImage: UIImage
    var artistDescription: String
    
    init(songTitle: String, youtubeThumbnail: UIImage, youtubeID: String, artistName: String, artistImage: UIImage, artistDescription: String) {
        self.songTitle = songTitle
        self.youtubeThumbnail = youtubeThumbnail
        self.youtubeID = youtubeID
        self.artistName = artistName
        self.artistImage = artistImage
        self.artistDescription = artistDescription
        super.init()
    }
}
