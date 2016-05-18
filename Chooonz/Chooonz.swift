//
//  Chooonz.swift
//  Chooonz
//
//  Created by John Claro on 18/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit

class Chooonz: NSObject {
    
    var youtubeTitle: String
    var youtubeThumbnail: UIImage
    var youtubeID: String
    var artistName: String
    var artistImage: UIImage
    var artistDescription: String
    
    init(youtubeTitle: String, youtubeThumbnail: UIImage, youtubeID: String, artistName: String, artistImage: UIImage, artistDescription: String) {
        self.youtubeTitle = youtubeTitle
        self.youtubeThumbnail = youtubeThumbnail
        self.youtubeID = youtubeID
        self.artistName = artistName
        self.artistImage = artistImage
        self.artistDescription = artistDescription
        super.init()
    }
}
