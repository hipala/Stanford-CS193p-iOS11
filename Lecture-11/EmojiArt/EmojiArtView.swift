//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Pala on 2017/12/8.
//  Copyright © 2017年 Pala. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {


    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
    

}
