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
    
    @IBOutlet weak var firstAction: UIButton!
    
    @IBOutlet weak var secondAction: UIButton!
    
    @IBAction func choiceButton(_ sender: UIButton) {
    }
    
    var story = [Story(t: "One day she had thinking about him at the new year holidays", ch1: "Write him", ch2: "Do nothing"),
                 Story(t: <#T##String#>, ch1: <#T##String#>, ch2: <#T##String#>)]
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story[storyNumber].title
        firstAction.setTitle(story[storyNumber].choice1, for: .normal)
        secondAction.setTitle(story[storyNumber].choice2, for: .normal)
    }
    
    
}

