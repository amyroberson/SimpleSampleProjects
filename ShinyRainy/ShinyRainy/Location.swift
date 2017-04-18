//
//  Location.swift
//  ShinyRainy
//
//  Created by Amy Roberson on 11/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//


import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var Longitude: Double!
    
}
