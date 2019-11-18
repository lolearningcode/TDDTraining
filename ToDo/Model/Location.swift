//
//  Location.swift
//  ToDo
//
//  Created by Lo Howard on 11/16/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation
import CoreLocation

struct Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        
        if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
            return false
        }
        
        if lhs.name != rhs.name {
            return false
        }
        
        if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
            return false
        }
        
        return true
    }
    
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
