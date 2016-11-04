//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Bryan Alexander on 11/4/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { //delegate gives the viewcontroller more control over text fields

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {  // run whenever a touch is registered outside keyboard
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder() // shut down the keyboard that is associated with that textField being edited // Bool means that this function must return a boolean
        
        return true
        
    }

}

