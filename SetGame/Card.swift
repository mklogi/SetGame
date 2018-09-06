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
        return "color: \(color), shape: \(shape), number: \(number), fill: \(fill)"
    }
    
    private var identifier: Int
    
    private static var factoryIdentifier = 0
    
    private static func getUniqueIdentifier() -> Int {
        factoryIdentifier += 1
        return factoryIdentifier
    }
    
    
    
    let color: Color
    let shape: Shape
    let number: Number
    let fill: Fill
    

    
    enum Color: Int, CustomStringConvertible {
        
        case red = 1
        case green
        case blue
        
        var description: String {
            switch self {
            case .red: return "red"
            case .green: return "green"
            case .blue: return "blue"
            }
        }
        
       
        
        //TODO: make switch like above
        
    }
    enum Shape: Int {
        case triangle = 1
        case circle
        case square
        
    }
    enum Number: Int {
        case one = 1
        case two
        case three
        
    }
    enum Fill: Int {
        case full = 1
        case half
        case empty
        
    }
    
    
    init(with c: Int, _ s: Int, _ n: Int, _ f: Int) {
      
        color = Card.Color(rawValue: c)!
        shape = Card.Shape(rawValue: s)!
        number = Card.Number(rawValue: n)!
        fill = Card.Fill(rawValue: f)!
        identifier = Card.getUniqueIdentifier()
    }
    
}
