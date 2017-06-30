//
//  ViewController.swift
//  EaglesApp
//
//  Created by Jesus Gomez on 6/28/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import UIKit
// needed for table view (protocols)
class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // needed for table view
    @IBOutlet weak var tableView: UITableView!
    
    var tomPettys = [TomPetty]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = TomPetty(imageURL: "https://i.ytimg.com/vi/s5BJXwNeKsQ/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAC33tWIVIJrs4l2YjlsE6CjiHaAw", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/s5BJXwNeKsQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Learning to Fly")
        
        let p2 = TomPetty(imageURL: "https://i.ytimg.com/vi/1lWJXDG2i0A/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDO9l9vFa2CrG2y8VovCzoxgZQfBw", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1lWJXDG2i0A\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Free Fallin")
        
        let p3 = TomPetty(imageURL: "https://i.ytimg.com/vi/Y1D3a5eDJIs/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDM6nLpf92TYp2bFTbOtafHaC2aKA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Y1D3a5eDJIs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Running Down a Dream")
        
        let p4 = TomPetty(imageURL: "https://i.ytimg.com/vi/nUTXb-ga1fo/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBGi69IAxYGcYxn0_nROeb2L1Pk6w", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nUTXb-ga1fo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I Wont Back Down")
        
        let p5 = TomPetty(imageURL: "https://i.ytimg.com/vi/mtLpZWNyM0I/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLARNcEgy1RplSk6VabgHo2gyx0RCQ", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mtLpZWNyM0I\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "You Got Lucky")
        
        tomPettys.append(p1)
        tomPettys.append(p2)
        tomPettys.append(p3)
        tomPettys.append(p4)
        tomPettys.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PettyCell", for: indexPath) as? PettyCell {
            
            let tomPetty = tomPettys[indexPath.row]
            
            cell.updateUI(tomPetty: tomPetty)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tomPettys.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tomPetty = tomPettys[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: tomPetty)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let tom = sender as? TomPetty {
                destination.tomPetty = tom
            }
        }
    }
}

