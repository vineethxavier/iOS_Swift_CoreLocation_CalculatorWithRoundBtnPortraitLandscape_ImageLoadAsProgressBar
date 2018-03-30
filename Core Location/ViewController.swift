//
//  ViewController.swift
//  Core Location
//
//  Created by Vineeth Xavier on 3/15/18.
//  Copyright © 2018 Vineeth Xavier. All rights reserved.
//


//https://www.youtube.com/watch?v=UyiuX8jULF4

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var MAP: MKMapView!
    
    var manager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    
    }
    
     func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]// all locations are stored in this arry, 0th will hold updated location
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01) //0.01 location zoom
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let myRegion:MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
        MAP.setRegion(myRegion, animated: true)
        self.MAP.showsUserLocation = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

