//
//  ChooonzVideoViewController.swift
//  Chooonz
//
//  Created by John Claro on 18/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import youtube_ios_player_helper

class ChooonzVideoViewController: UIViewController {

    @IBOutlet weak var youtubeVideo: YTPlayerView!
    @IBOutlet weak var youtubeTitle: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistDescription: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    
    var selectedChooonz = Chooonz(youtubeTitle: "", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "", artistName: "", artistImage: UIImage(named: "photoNotAvailable")!, artistDescription: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.youtubeVideo.loadWithVideoId(self.selectedChooonz.youtubeID, playerVars: ["playsinline": 1, "fs": 0])
        self.youtubeTitle.text = self.selectedChooonz.youtubeTitle
        self.artistName.text = self.selectedChooonz.artistName
        self.artistDescription.text = self.selectedChooonz.artistDescription
        self.artistImage.image = self.selectedChooonz.artistImage
        self.artistImage.layer.cornerRadius = self.artistImage.frame.size.width / 2
        self.artistImage.clipsToBounds = true
    }

}
