//
//  ViewController.swift
//  how many fingers
//
//  Created by Bryan Alexander on 11/2/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberEntryArea: UITextField!
    
    @IBOutlet weak var answerArea: UILabel!
    
    @IBAction func guessButtonTapped(_ sender: Any) {
     
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == numberEntryArea.text {
            
            answerArea.text = "You're Right!"
            
        } else {
            
            answerArea.text = "Sorry, it was a " + diceRoll + ". Please try again."
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

