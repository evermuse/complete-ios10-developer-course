//
//  ViewController.swift
//  Is It Prime
//
//  Created by Bryan Alexander on 11/2/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberEntryField: UITextField!
    
    @IBOutlet weak var outcomeDisplayArea: UILabel!
    
    @IBAction func isItPrimeButtton(_ sender: Any) {
        
        if let userEnteredString = numberEntryField.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    outcomeDisplayArea.text = "\(number) is prime!"
                    
                } else {
                    
                    outcomeDisplayArea.text = "\(number) is not prime."
                    
                }
                
            } else {
                
                outcomeDisplayArea.text = "Please enter a positive whole number"
                
            }
            
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

