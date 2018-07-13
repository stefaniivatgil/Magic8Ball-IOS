//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Stefani İvatgil on 3/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?",  "Very doubtful", "Don't count on it", "My reply is no","Absouloutely not" ,"Forget about it","Over my dead battery","All the way","Maybe later", "Easyly", "I would bet on it","Duh","Nope"]
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
}

