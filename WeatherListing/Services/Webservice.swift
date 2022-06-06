//
//  Webservice.swift
//  WeatherListing
//
//  Created by Huy on 6/5/22.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
    
    
    
}


//this class is the final, no more inheritance from this
final class Webservice{
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()){
        
        print(resource.url)
        //part of ios framework
        URLSession.shared.dataTask(with: resource.url){ data, res, error in
            print(data)
            if let data = data {
                //this will let the completion event fire from the main thread
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else{
                completion(nil)
            }
            
        }.resume()
        
    }
    
}
