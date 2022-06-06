//
//  WeatherListTableViewController.swift
//  WeatherListing
//
//  Created by Huy on 6/4/22.
//

import Foundation
import UIKit


class WeatherListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
//        let resource = Resource(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=51.5073219&lon=-0.1276474&appid=87a1ce00becdf67ace97c43556de9342")!) {data in
//            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
//        }
//        Webservice().load(resource: resource){ weatherResponse in
//            if let weatherResponse = weatherResponse {
//                print(weatherResponse)
//            }
//        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLabel?.text = "Houston"
        cell.temperatureLabel?.text = "70°"
        return cell
    }
    
}
