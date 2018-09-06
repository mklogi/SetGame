//
//  ViewController.swift
//  SetGame
//
//  Created by Marcin Kowalczyk on 06.09.2018.
//  Copyright © 2018 Marcin Kowalczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cards = [Card]()
   
    override func viewDidLoad() {
        
        for c in 1...3 {
            for s in 1...3 {
                for n in 1...3 {
                    for f in 1...3 {
                        _ = cards.append(Card(with: c, s, n, f))
                    }
                }
            }
        }
        
        
        
        super.viewDidLoad()
        
        
        print(cards.description)
        print(cards.count)

  
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

