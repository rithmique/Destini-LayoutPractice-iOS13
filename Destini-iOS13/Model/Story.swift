//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Story {
    var title: String
    var image: UIImage?
    var choice1: String
    var choice2: String
    let choice1Destination: Int
    let choice2Destination: Int
    
    init(t: String, img: UIImage?, ch1: String, ch2: String, ch1D: Int, ch2D: Int){
        self.title = t
        self.image = img
        self.choice1 = ch1
        self.choice2 = ch2
        self.choice1Destination = ch1D
        self.choice2Destination = ch2D
    }
}
