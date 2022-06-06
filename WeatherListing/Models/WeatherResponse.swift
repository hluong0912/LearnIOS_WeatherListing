//
//  WeatherResponse.swift
//  WeatherListing
//
//  Created by Huy on 6/5/22.
//

import Foundation

struct GeoLocation: Decodable{
    let name: String
    let lat: Double
    let lon: Double
    let country: String
    let state: String
    
}

struct WeatherResponse: Decodable {
    let main: Weather
    
}

struct Weather: Decodable{
    let temp: Double
    let humidity: Int
    
}
