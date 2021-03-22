//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var historyLabel: UILabel!
    
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var firstAction: UIButton!
    
    @IBOutlet weak var secondAction: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateStory()
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice: userChoice)
        updateStory()
    }
    
    func updateStory() {
        historyLabel.text = "History root: \(storyBrain.storyNumber)"
        storyLabel.text = storyBrain.getStory()
        firstAction.setTitle(storyBrain.getChoice1(), for: .normal)
        secondAction.setTitle(storyBrain.getChoice2(), for: .normal)
        imageView.image = storyBrain.getImage()
    }
    
    
}

