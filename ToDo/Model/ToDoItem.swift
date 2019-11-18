//
//  ToDoItem.swift
//  ToDo
//
//  Created by Lo Howard on 11/16/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation

struct ToDoItem: Equatable {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        if lhs.location != rhs.location {
            return false
        }
        
        if lhs.timestamp != rhs.timestamp {
            return false
        }
        
        if lhs.itemDescription != rhs.itemDescription {
            return false
        }
        
        if lhs.title != rhs.title {
            return false
        }
        
        return true
    }
    
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    //Adding default implementation to make the init optional
    //ToDoItem must have a title to be saved but everything else is optional
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}
