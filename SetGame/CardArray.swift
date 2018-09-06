//
//  CardArray.swift
//  SetGame
//
//  Created by Marcin Kowalczyk on 06.09.2018.
//  Copyright © 2018 Marcin Kowalczyk. All rights reserved.
//

import Foundation

struct CardArray {
    
    var cardDeck = [Card]()
    
    func draw(numberOfCardsToDraw: CardToDraw) {
        
        var numb: Int
        
        switch numberOfCardsToDraw {
        case .three:
            numb = 3
        case .twelve:
            numb = 12
        }
        for i in 1...numb {
            print(cardDeck[i])
        }
    }
    
    enum CardToDraw: Int {
        case three = 3
        case twelve = 12
    }
    
    

    init(){
        for c in 1...3 {
            for s in 1...3 {
                for n in 1...3 {
                    for f in 1...3 {
                        let card = Card(with: c, s, n, f)
                        cardDeck.append(card)
                    }
                }
            }
        }
        
        
    }
    
    
    
}
