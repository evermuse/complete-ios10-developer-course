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
    
        let latitude: CLLocationDegrees = -33.85
        
        let longitude: CLLocationDegrees = 151.21
        
        let latDelta: CLLocationDegrees = 0.06 //zoom level of the map
        
        let longDelta: CLLocationDegrees = 0.06
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

