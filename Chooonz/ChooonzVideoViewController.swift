//
//  ChooonzVideoViewController.swift
//  Chooonz
//
//  Created by John Claro on 18/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit

class ChooonzVideoViewController: UIViewController {

    @IBOutlet weak var youtubeVideo: UIWebView!
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
        self.youtubeTitle.text = self.selectedChooonz.youtubeTitle
        let youtubeURL = "https://www.youtube.com/embed/" + self.selectedChooonz.youtubeID
        let youtubeEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"\(self.youtubeVideo.frame.height)\" width=\"\(self.youtubeVideo.frame.width)\" src=\"\(youtubeURL)?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
        self.youtubeVideo.loadHTMLString(youtubeEmbedString, baseURL: nil)
        
        self.artistName.text = self.selectedChooonz.artistName
        self.artistDescription.text = self.selectedChooonz.artistDescription
        self.artistImage.image = self.selectedChooonz.artistImage
        self.artistImage.layer.cornerRadius = self.artistImage.frame.size.width / 2
        self.artistImage.clipsToBounds = true
    }
}
