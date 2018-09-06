//
//  ViewController.swift
//  SetGame
//
//  Created by Marcin Kowalczyk on 06.09.2018.
//  Copyright © 2018 Marcin Kowalczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cardButton: UIButton!
    
    
    
    var cards = CardArray()
   
    override func viewDidLoad() {
        
        
        
        
        let color = ["red" : #colorLiteral(red: 1, green: 0, blue: 0.009361755543, alpha: 1), "green" : #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), "blue" : #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)]
        let shape = ["triangle": "▲", "circle" : "●","square" : "■"]
        

        super.viewDidLoad()

        cards.draw(numberOfCardsToDraw: .twelve)
        
        cardButton.setTitleColor(color["red"], for: .normal)
        cardButton.setTitle(shape["triangle"], for: .normal)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    
    
    
    

}

