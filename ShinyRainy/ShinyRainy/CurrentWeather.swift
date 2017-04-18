//
//  CurrentWeather.swift
//  ShinyRainy
//
//  Created by Amy Roberson on 11/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil{
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today is \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete){
        //alamofire download weather data
        
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            print(response)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                    
                }
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTempurature = main["temp"] as? Double {
                        //converts Kelvin to F
                        let kelvinToFarenheitSetOne = (currentTempurature * (9/5)-459.67)
                        let KelvintoFarenheit = Double(round(10 * kelvinToFarenheitSetOne/10))
                        self._currentTemp = KelvintoFarenheit
                    }
                }
            }
        completed()
        }
        
    }
}