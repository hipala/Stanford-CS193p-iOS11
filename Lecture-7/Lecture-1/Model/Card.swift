//
//  Card.swift
//  Lecture-1
//
//  Created by Pala on 2017/11/17.
//  Copyright © 2017年 Pala. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var hashValue: Int { return identifier }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    // Type Property and Method, 'var instance = Card()' not have those 
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int

    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
