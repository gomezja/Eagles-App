//
//  PettyCell.swift
//  TomPettyApp
//
//  Created by Jesus Gomez on 6/29/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import UIKit

class PettyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(tomPetty: TomPetty) {
        videoTitle.text = tomPetty.videoTitle
    }

}
