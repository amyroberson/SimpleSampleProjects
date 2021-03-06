//
//  Constants.swift
//  ShinyRainy
//
//  Created by Amy Roberson on 11/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

let Base_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = Location.sharedInstance.latitude
let LONGITUDE = Location.sharedInstance.longitude
let APP_ID = "&appid="
let API_KEY = "30d8ec70c2737ebf953dc0c1e0ce68f1"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(LATITUDE!)&lon=\(LONGITUDE!)&appid=30d8ec70c2737ebf953dc0c1e0ce68f1"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(LATITUDE!)&lon=\(LONGITUDE!)&cnt=10&mode=json&appid=30d8ec70c2737ebf953dc0c1e0ce68f1"



