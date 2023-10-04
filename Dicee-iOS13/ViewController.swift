//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    
    let kubs = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
        scoreLabel.text = "0"
        winLabel.isHidden = true
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton ) {
        diceImageView1.image = kubs[Int.random(in: 0...5)]
        diceImageView2.image = kubs.randomElement()
        equals()
    }
    func equals(){
        if diceImageView1.image == diceImageView2.image {
            print("Equal")
            scoreLabel.text = "\(Int(scoreLabel.text!)! + 1)"
            
            if scoreLabel.text == "3"{
                print("win")
                winLabel.isHidden = false
                scoreLabel.text = "0"
            }
        }
    }
}

