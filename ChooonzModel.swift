//
//  ChooonzModel.swift
//  
//
//  Created by John Claro on 18/05/2016.
//
//

import UIKit
import Alamofire
import SwiftyJSON

protocol ChooonzModelDelegate {
    func dataReady()
}

class ChooonzModel: NSObject {
    
    var chooonzArray = [Chooonz]()
    var delegate: ChooonzModelDelegate?
    
    func getChooonzs() {
        Alamofire.request(.GET, "http://choonz.eu-gb.mybluemix.net/songs").responseJSON { (responseData) -> Void in
            let data = JSON(responseData.result.value!)
            var arrayOfChooonzs = [Chooonz]()
            for (_, chooonzDetails) in data {
                // title, thumbnail, youtubeId, name, image
                var youtubeTitle = chooonzDetails["title"].string
                if youtubeTitle != nil {
                    youtubeTitle = chooonzDetails["title"].string
                } else {
                    youtubeTitle = "N/A"
                }
                
                var youtubeId = chooonzDetails["youtubeId"].string
                if youtubeId != nil {
                    youtubeId = chooonzDetails["youtubeId"].string
                } else {
                    youtubeId = "N/A"
                }
                
                var artistName = chooonzDetails["name"].string
                if artistName != nil {
                    artistName = chooonzDetails["name"].string
                } else {
                    artistName = "N/A"
                }
                
                var artistDescription = chooonzDetails["bio"].string
                if artistDescription != nil {
                    artistDescription = chooonzDetails["bio"].string
                } else {
                    artistDescription = "N/A"
                }
                
                let artistImageURL = chooonzDetails["url"].string! + "/image"
                Alamofire.request(.GET, artistImageURL).responseImage { response in
                    if let artistImage = response.result.value {
                        let youtubeThumbnailURL = "https://i1.ytimg.com/vi/" + youtubeId! + "/maxresdefault.jpg"
                        Alamofire.request(.GET, youtubeThumbnailURL)
                            .responseImage { response in
                                if let youtubeThumbnail = response.result.value {
                                    arrayOfChooonzs.append(Chooonz(youtubeTitle: youtubeTitle!, youtubeThumbnail: youtubeThumbnail, youtubeID: youtubeId!, artistName: artistName!, artistImage: artistImage, artistDescription: artistDescription!))
                                    self.chooonzArray = arrayOfChooonzs
                                    
                                    if self.delegate != nil {
                                        self.delegate!.dataReady()
                                    }
                                }
                        }
                    }
                }
            }
        }
    }
}
