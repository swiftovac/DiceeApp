//
//  ViewController.swift
//  Dicee App
//
//  Created by Stefan Milenkovic on 11/13/18.
//  Copyright © 2018 Stefan Milenkovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceNames = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var diceIndex1 = 0
    var diceIndex2 = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAndUpdateDiceImages()
        
    }
    
    
    
    
    
    

    @IBAction func rollTaped(_ sender: Any) {
        
        
        getAndUpdateDiceImages()
        
    }
    
    
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAndUpdateDiceImages()
    }
    
    
    func getAndUpdateDiceImages() {
        
        diceIndex1 = Int.random(in: 0 ... 5)
        diceIndex2 = Int.random(in: 0 ... 5)
      
        diceImageView1.image = UIImage(named: diceNames[diceIndex1])
        diceImageView2.image = UIImage(named: diceNames[diceIndex2])
   
    }
    
    
    
    
    
    
}

