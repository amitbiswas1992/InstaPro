//
//  ViewController.swift
//  InstaPro
//
//  Created by Maze Geek on 8/24/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground {
            (success, error) in
            if (success) {
               print("Success")
                
            } else {
                print("Failed")
            }
        }
        
    }



}

