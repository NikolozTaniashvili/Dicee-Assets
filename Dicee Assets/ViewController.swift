//
//  ViewController.swift
//  dic
//
//  Created by nika taniashvili on 6/8/21.
//  Copyright © 2021 nika taniashvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let  diceArrey = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceimageVeiw2: UIImageView!
    
    @IBOutlet weak var diceimageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updatediceimages()
    }

    @IBAction func rollpressbutton(_ sender: UIButton) {
        updatediceimages()
    }
    func updatediceimages () {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndex1)
        
        diceimageView1.image = UIImage(named: diceArrey[randomDiceIndex1])
        diceimageVeiw2.image = UIImage(named: diceArrey[randomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updatediceimages()
    }
}

