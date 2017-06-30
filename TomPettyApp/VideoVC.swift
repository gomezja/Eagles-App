//
//  VideoVC.swift
//  EaglesApp
//
//  Created by Jesus Gomez on 6/28/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    private var _tomPetty: TomPetty!
    
    var tomPetty: TomPetty {
        get {
            return _tomPetty
        } set {
            _tomPetty = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = tomPetty.videoTitle
        webView.loadHTMLString(tomPetty.videoURL, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
