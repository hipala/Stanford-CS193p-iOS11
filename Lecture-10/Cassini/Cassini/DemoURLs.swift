//
//  DemoURLs.swift
//  Cassini
//
//  Created by Pala on 2017/12/7.
//  Copyright © 2017年 Pala. All rights reserved.
//

import Foundation

struct DemoURLs {
    
    static let demo = Bundle.main.url(forResource: "landscape", withExtension: "jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
