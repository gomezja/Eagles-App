//
//  TomPetty.swift
//  TomPettyApp
//
//  Created by Jesus Gomez on 6/29/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import Foundation

class TomPetty {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    // getter
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
