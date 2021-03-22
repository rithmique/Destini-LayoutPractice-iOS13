//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain {
    
    var story = [Story(t: "One day she had thinking about him at the new year holidays", img: #imageLiteral(resourceName: "legs"),  ch1: "Write him", ch2: "Do nothing", ch1D: 1, ch2D: 2),
                 Story(t: "ez", img: UIImage(), ch1: "not ez", ch2: "truly ez", ch1D: 0, ch2D: 0),
                 Story(t: "sad", img: UIImage(), ch1: "not sad", ch2: "truly sad", ch1D: 0, ch2D: 0)]
    var endGame = [Story(t: "You have lost him", img: UIImage(), ch1: "Do", ch2: "Nothing", ch1D: 0, ch2D: 0)]
    var storyNumber = 0
    var endGameStoryNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if storyNumber == 0 {
            if userChoice == story[storyNumber].choice1 {
                storyNumber = story[storyNumber].choice1Destination
            }else if userChoice == story[storyNumber].choice2 {
                storyNumber = story[storyNumber].choice2Destination
            }
        }else{
            storyNumber = 0
        }
    }
    func getStory() -> String {
        if storyNumber == 2 {
            return endGame[endGameStoryNumber].title
        }
        return story[storyNumber].title
    }
    func getChoice1() -> String {
        return story[storyNumber].choice1
    }
    func getChoice2() -> String {
        return story[storyNumber].choice2
    }
    func getImage() -> UIImage {
        return story[storyNumber].image ?? UIImage()
    }
}
