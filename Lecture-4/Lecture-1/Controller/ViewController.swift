//
//  ViewController.swift
//  Lecture-1
//
//  Created by Pala on 2017/11/17.
//  Copyright © 2017年 Pala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Lazy properties may not have observers
    // an odd number should be round up
    private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
    
    // read only
    var numberOfPairsOfCards: Int {
        return (cardButtons.count + 1) / 2
    }
    
    private(set) var flipCount = 0 {
        didSet {
            updateFlipCountLabel()
        }
    }
    
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedStringKey: Any] = [
            .strokeWidth: 5.0,
            .strokeColor: #colorLiteral(red: 0.8795758929, green: 0.4431372583, blue: 0.4745098054, alpha: 1)
        ]
        let attributedString = NSAttributedString(string: "Filps: \(flipCount)", attributes: attributes)
        flipCountLabel.attributedText = attributedString

    }
    
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
            updateFlipCountLabel()
        }
    }
    @IBOutlet private var cardButtons: [UIButton]!
    
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in cardbuttons")
        }
    }
    
    func updateViewFromModel() {
        // 'cardButtons.indices' is same result as '0..<cardButtons.count'
        // The indices that are valid for subscripting the collection, in ascending order.
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.8795758929, green: 0.4431372583, blue: 0.4745098054, alpha: 1)
            }
        }
    }
    
    // private var emojiChoices = ["🐧", "🐹", "🐼", "🦊", "🐤"]
    private var emojiChoices = "🐧🐹🐼🦊🐤"
    
    private var emoji = [Card: String]()
    
    private func emoji(for card: Card) -> String {
        if emoji[card] == nil, emojiChoices.count > 0 {
            
            // use extension down below, compare with the old one
            // let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            let randomStringIndex = emojiChoices.index(emojiChoices.startIndex, offsetBy: emojiChoices.count.arc4random)
            emoji[card] = String(emojiChoices.remove(at: randomStringIndex))
        }
        return emoji[card] ?? "?"
    }
}

// more readable
extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        }  else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
