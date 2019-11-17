//
//  ItemManager.swift
//  ToDo
//
//  Created by Lo Howard on 11/17/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation

class ItemManager {
    //holds the toDoItems count
    var toDoCount = 0
    //holds the done count
    var doneCount = 0
    //Array that holds toDoItems
    private var toDoItems = [ToDoItem]()
    
    func add(_ item: ToDoItem) {
        //when the item is added it increases the toDoCount by 1 and appends the item to the toDoItems array
        toDoCount += 1
        toDoItems.append(item)
    }
    
    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int) {
        //when the user checks an item the doneCount increases by 1 and the toDoCount decreases by 1
        doneCount += 1
        toDoCount -= 1
    }
}
