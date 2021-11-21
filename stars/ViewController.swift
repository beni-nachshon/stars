//
//  ViewController.swift
//  stars
//
//  Created by Benny Nahshon on 16/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
   var numOfFullStars : Int = -1
    
  
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
   
    @IBOutlet var stars: [UIButton]!
    
    @IBAction func changeStarStatus(_ sender: UIButton) {
        
            for star in 0...sender.tag {
                stars[star].setImage(UIImage(systemName:  "star.fill"), for: UIControl.State.normal)
                      }
        for star in sender.tag...stars.count - 1 {
               stars [star].setImage(UIImage(systemName:  "star"), for: UIControl.State.normal)
            }
        if sender.tag != numOfFullStars {
            stars[sender.tag].setImage(UIImage(systemName:  "star.fill"), for: UIControl.State.normal)
            numOfFullStars = sender.tag
        }
        else{
            numOfFullStars = sender.tag - 1        }
        
            
            
      
          
               }
        
        
       
        
        
    }
    


