//
//  ViewController.swift
//  stars
//
//  Created by Benny Nahshon on 16/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum starStatus {
        case full
        case empty
    }
    
    var allStarsStatus : [Int:starStatus] = [:]
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for star in stars {
            allStarsStatus = [star.tag: starStatus.empty]
        }
    }
   
    @IBOutlet var stars: [UIButton]!
    
    @IBAction func changeStarStatus(_ sender: UIButton) {
       
        if allStarsStatus[sender.tag] == .empty {
            sender.setImage(UIImage(systemName:  "star.fill"), for: UIControl.State.normal)
            allStarsStatus[sender.tag] = .full        }
        else{
            sender.setImage(UIImage(systemName:  "star"), for: UIControl.State.normal)
            allStarsStatus[sender.tag] = .empty        }
        
        
        
       
        
        
    }
}

