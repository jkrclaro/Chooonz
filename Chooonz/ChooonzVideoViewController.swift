//
//  ChooonzVideoViewController.swift
//  Chooonz
//
//  Created by John Claro on 18/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit
import Alamofire

class ChooonzVideoViewController: UIViewController {

    @IBOutlet weak var youtubeVideo: UIWebView!
    @IBOutlet weak var youtubeTitle: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistDescription: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var youtubeVideoHeightConstraint: NSLayoutConstraint!
    
    
    var selectedChooonz = Chooonz(youtubeTitle: "", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "", artistName: "", artistImage: UIImage(named: "photoNotAvailable")!, artistDescription: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://134.168.50.20:8090/songs/0")
            .responseJSON { response in
                if let JSON = response.result.value {
                    print(JSON["bio"])
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.youtubeTitle.text = self.selectedChooonz.youtubeTitle
        
        let width = self.youtubeVideo.frame.size.width
        let height = width / 320 * 180
        self.youtubeVideoHeightConstraint.constant = height
        let youtubeEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"" + String(height) + "\" width=\"" + String(width) + "\" src=\"https://www.youtube.com/embed/" + self.selectedChooonz.youtubeID + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
        self.youtubeVideo.loadHTMLString(youtubeEmbedString, baseURL: nil)
        
        self.artistName.text = self.selectedChooonz.artistName
        self.artistDescription.text = self.selectedChooonz.artistDescription
        self.artistImage.image = self.selectedChooonz.artistImage
        self.artistImage.layer.cornerRadius = self.artistImage.frame.size.width / 2
        self.artistImage.clipsToBounds = true
    }
}
