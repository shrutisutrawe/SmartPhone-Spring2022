//
//  ViewController.swift
//  GetLocationExample
//
//  Created by Chandnani, Harsh on 3/13/22.
//

import UIKit
import CoreLocation

/*
 1. Create Privacy Location entries in Info.plist for "Always and when in Use"
 2. Import CoreLocation Library
 3. Create Outlets
 4. create a location manager instance let Loca
 
 */

class ViewController: UIViewController,CLLocationManagerDelegate{

    
    @IBOutlet weak var lblLongitude: UILabel!
    @IBOutlet weak var lblLatitude: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        startSignificantLocationChange()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func getLocationAction(_ sender: Any) {
        locationManager.requestLocation()
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error in getting location \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        let latitude = location.coordinate.latitude
        let longitude = location.coordinate.longitude
        
        print(latitude)
        print(longitude)
        
        lblLatitude.text = "Latitude : \(latitude)"
        lblLongitude.text = "Longitude : \(longitude)"
        
        getAddress(location:location)
    
    }
    
    func startSignificantLocationChange(){
        if CLLocationManager.significantLocationChangeMonitoringAvailable(){
            locationManager.startMonitoringSignificantLocationChanges()
            locationManager.startUpdatingLocation()
        }
    }
    
    func getAddress( location : CLLocation){
        
        let clGeocoder = CLGeocoder()
        
        clGeocoder.reverseGeocodeLocation(location) { (placeMarks, error) in
            if error != nil{
                self.lblAddress.text = "Unable to get Address"
                return
            }
            
            guard let place = placeMarks?[0] else {return}
            
            var address = ""
            if place.name != nil {
                address += place.name! + ", "
            }
            if place.subLocality != nil{
                address += place.subLocality! + ", "
            }
            if place.locality != nil {
                address += place.locality! + ", "
            }
            if place.postalCode != nil {
                address += place.postalCode! + ", "
            }
            
            if place.country != nil {
                address += place.country! + ", "
            }
            
            print(address)
            
            self.lblAddress.text = address
        }
    }
}

