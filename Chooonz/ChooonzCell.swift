//
//  ChooonzCell.swift
//  Chooonz
//
//  Created by John Claro on 17/05/2016.
//  Copyright © 2016 jkrclaro. All rights reserved.
//

import UIKit

class ChooonzCell: UITableViewCell {
    
    @IBOutlet weak var youtubeThumbnail: UIImageView!
    @IBOutlet weak var youtubeTitle: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
