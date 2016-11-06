//
//  ViewController.swift
//  integrating maps
//
//  Created by Bryan Alexander on 11/6/16.
//  Copyright © 2016 sarva. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let latitude: CLLocationDegrees = -33.857
        
        let longitude: CLLocationDegrees = 151.215
        
        let latDelta: CLLocationDegrees = 0.05 //zoom level of the map
        
        let longDelta: CLLocationDegrees = 0.05
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
        
        //start annotation exercise
        
        let annotation = MKPointAnnotation()
        
        annotation.title = "Sydney Opera House"
        
        annotation.subtitle = "One day I'll visit"
        
        annotation.coordinate = location
        
        map.addAnnotation(annotation)
        
        //long press gesture recognizer for user added annotations
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:))) //colon important to send location information along with the press to the longpress method
        
        uilpgr.minimumPressDuration = 2 //number of seconds to recognize
        
        map.addGestureRecognizer(uilpgr)
    
    }

    func longpress(gestureRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map) //map knows where gesture happened and where it is in map space
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New Place"
        
        annotation.subtitle = "Maybe I'll go here too"
        
        map.addAnnotation(annotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

