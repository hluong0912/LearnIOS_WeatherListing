//
//  AddWeatherCityViewController.swift
//  WeatherListing
//
//  Created by Huy on 6/4/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController{
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed(){
        
        if let city = cityNameTextField.text{
            
            let geocordCity = URL(string: "https://api.openweathermap.org/geo/1.0/direct?q=\(city)&limit=1&appid=87a1ce00becdf67ace97c43556de9342")!
            
            let geoResource = Resource<Any>(url: geocordCity) { data in
                return data
            }
            
            Webservice().load(resource: geoResource){ result in
                
            }
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=51.5073219&lon=-0.1276474&appid=87a1ce00becdf67ace97c43556de9342")
            
            
        }
    }
    
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
//https://api.openweathermap.org/data/2.5/weather?lat=51.5073219&lon=-0.1276474&appid=87a1ce00becdf67ace97c43556de9342
    //http://api.openweathermap.org/geo/1.0/direct?q=London,uk&limit={limit}&appid=87a1ce00becdf67ace97c43556de9342
}
