//
//  ViewController.swift
//  egg timer
//
//  Created by Bryan Alexander on 11/4/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
        
            time -= 1
        
            timerLabel.text = String(time);
        
        } else {
            
            timer.invalidate()
            
        }
    
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBAction func startTimer(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func timerPause(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        timerLabel.text = String(time)
        
    }
    
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
            
        time -= 10
        timerLabel.text = String(time)
            
        }
        
    }
    
    @IBAction func timerReset(_ sender: Any) {
        
        timer.invalidate()
        time = 210
        timerLabel.text = String(time)
        
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

