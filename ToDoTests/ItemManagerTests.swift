//
//  ItemManagerTests.swift
//  ToDoTests
//
//  Created by Lo Howard on 11/17/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    var sut: ItemManager!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ItemManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        sut = nil
        
        super.tearDown()
    }
    
    func test_ToDoCount_Initially_IsZero() {
        //let sut = ItemManager()
        XCTAssertEqual(sut.toDoCount, 0)
    }
    
    func test_DoneCount_Initially_IsZero() {
        //let sut = ItemManager()
        XCTAssertEqual(sut.doneCount, 0)
    }
    
    func test_AddItem_IncreasesToDoCountToOne() {
        sut.add(ToDoItem(title: ""))
        XCTAssertEqual(sut.toDoCount, 1)
    }
    
    func test_ItemAt_ReturnsAddedItem() {
        let item = ToDoItem(title: "Foo")
        
        sut.add(item)
        
        let returnedItem = sut.item(at: 0)
        
        XCTAssertEqual(returnedItem.title, item.title)
    }
    
    func test_CheckItemAt_ChangesCounts() {
        sut.add(ToDoItem(title: ""))
        
        sut.checkItem(at: 0)
        
        XCTAssertEqual(sut.toDoCount, 0)
        XCTAssertEqual(sut.doneCount, 1)
    }
    
    func test_CheckItemAt_RemovesItFromToDoItems() {
        //items
        let first = ToDoItem(title: "First")
        let second = ToDoItem(title: "Second")
        
        //items are added to toDoItems array
        sut.add(first)
        sut.add(second)
        
        sut.checkItem(at: 0)
        
        XCTAssertEqual(sut.item(at: 0).title, "Second")
    }
    
    func test_DoneItemAt_ReturnsCheckedItem() {
        let item = ToDoItem(title: "Foo")
        
        sut.add(item)
        sut.checkItem(at: 0)
        
        let returnedItem = sut.doneItem(at: 0)
        
        XCTAssertEqual(returnedItem.title, item.title)
    }
}
