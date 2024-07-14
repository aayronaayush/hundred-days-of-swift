//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var rollDiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImages()
    }
    
    func resolveImageName(number: Int) -> String {
        let prefix = "Dice"
        switch(number) {
        case 1:
            return "\(prefix)One"
        case 2:
            return "\(prefix)Two"
        case 3:
            return "\(prefix)Three"
        case 4:
            return "\(prefix)Four"
        case 5:
            return "\(prefix)Five"
        case 6:
            return "\(prefix)Six"
        default:
            return  resolveImageName(number: number % 6 + 1)
        }
    }
    
    @IBAction func onClickRollDice(_ sender: UIButton) {
        updateImages()
    }
    
    func updateImages() {
        let diceOneValue = generateRandomNumber()
        let diceTwoValue = generateRandomNumber()
        
        diceImageViewOne.image = UIImage(named: resolveImageName(number: diceOneValue))
        diceImageViewTwo.image = UIImage(named: resolveImageName(number: diceTwoValue))
    }
    
    func generateRandomNumber() -> Int {
        return Int.random(in: 1..<100)
    }

}

