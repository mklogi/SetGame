//
//  ViewController.swift
//  SetGame
//
//  Created by Marcin Kowalczyk on 06.09.2018.
//  Copyright © 2018 Marcin Kowalczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let card: [Card] = []
    @IBOutlet var CardButtons: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(card.description)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

