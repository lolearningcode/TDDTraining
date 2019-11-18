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
    var toDoCount : Int { return toDoItems.count }
    //holds the done count
    var doneCount : Int { return doneItems.count }
    //Array that holds toDoItems
    private var toDoItems = [ToDoItem]()
    //Array that holds all of the items that are done
    private var doneItems = [ToDoItem]()
    
    func add(_ item: ToDoItem) {
        //when the item is added it increases the toDoCount by 1 and appends the item to the toDoItems array
        //        toDoCount += 1
        if !toDoItems.contains(item) {
            toDoItems.append(item)
        }
    }
    
    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int) {
        //when the user checks an item the doneCount increases by 1 and the toDoCount decreases by 1
        //        toDoCount -= 1
        //        doneCount += 1
        
        //the item is then removed from toDoItems array at the passed in index then appended to the doneItems array
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    
    func doneItem(at index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
    func removeAll() {
        toDoItems.removeAll()
        doneItems.removeAll()
    }
}
