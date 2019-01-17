//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hussain Arthuna on 1/16/19.
//  Copyright © 2019 Hussain Arthuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomImageIndex = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    

    @IBOutlet weak var ballImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomImageIndex = Int.random(in: 0 ... 4)
        
        ballImageView.image = UIImage(named: ballArray[randomImageIndex])
        
    }
    
}

