//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
///Users/aayush/Documents/hundred-days-of-swift/Magic-8-Ball-iOS13/Magic 8 Ball/Base.lproj/Main.storyboard

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    @IBOutlet weak var magic8Ball: UIImageView!
    
    @IBAction func onClickAsk() {
        magic8Ball.image = ballArray.randomElement()
    }
    
}

