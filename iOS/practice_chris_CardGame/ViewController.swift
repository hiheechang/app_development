//
//  ViewController.swift
//  practice_chris(UI)
//
//  Created by Kang Heechang on 6/14/19.
//  Copyright © 2019 Kang Heechang. All rights reserved.
//
// https://www.youtube.com/watch?v=GTaPQp_KFsI&t=875s
import UIKit

class ViewController: UIViewController {

    
 
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        
        
        let rightNumber = Int.random(in: 2...14)
      
        
        leftImageView.image = UIImage(named : "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }else if leftNumber < rightNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            
        }
        
    }
    
      
    
}

