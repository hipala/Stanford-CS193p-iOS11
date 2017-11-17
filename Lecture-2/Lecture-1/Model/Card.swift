//
//  Card.swift
//  Lecture-1
//
//  Created by Pala on 2017/11/17.
//  Copyright © 2017年 Pala. All rights reserved.
//

import Foundation

struct Card {
    
    // Type Property and Method, 'var instance = Card()' not have those 
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int

    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
