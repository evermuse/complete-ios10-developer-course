//
//  ViewController.swift
//  downloading web content
//
//  Created by Bryan Alexander on 11/5/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // below is webview code
        
        /*
         
        let url = URL(string: "http://www.stackoverflow.com")!
        
        webview.loadRequest(URLRequest(url: url))    //-- this code allows for downloading from web
        
        webview.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
 
        */
        
        if let url = URL(string: "https://www.stackoverflow.com") {
        
            let request = NSMutableURLRequest(url: url)
        
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
            
                data, response, error in
                
                if error != nil {
                    
                    print(error)
                    
                } else {
                    
                    if let unwrappedData = data {
  
                        // Rob's code ran here. Need to come back to this.
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Enconding.utf8.rawValue)
                    
                    print(dataString)
                        
                    // below is async code
                        
                        /*
                        
                        DispaatchQueue.main.sync(execute: {
                            
                            //Update UI
                        
                        })
                        
                        */
                        
                    }
                    
                }
            
            }
        
            task.resume()
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

