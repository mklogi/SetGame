//
//  Card.swift
//  SetGame
//
//  Created by Marcin Kowalczyk on 06.09.2018.
//  Copyright © 2018 Marcin Kowalczyk. All rights reserved.
//

import Foundation

struct Card: Hashable, Equatable, CustomStringConvertible {
    
    
    var hashValue: Int { return identifier }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return rhs.hashValue == lhs.hashValue
    }
    
    var description: String {
       return " "
    }
    
    private var identifier: Int
    
    private static var factoryIdentifier = 0
    
    private static func getUniqueIdentifier() -> Int {
        factoryIdentifier += 1
        return factoryIdentifier
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
