//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    
    init(t: String, ch1: String, ch2: String){
        self.title = t
        self.choice1 = ch1
        self.choice2 = ch2
    }
    func getStory() -> String {
        return title
    }
    func getChoice1() -> String {
        return choice1
    }
    func getChoice2() -> String {
        return choice2
    }
}
