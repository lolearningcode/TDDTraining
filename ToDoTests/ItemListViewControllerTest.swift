//
//  ItemListViewControllerTest.swift
//  ToDoTests
//
//  Created by Lo Howard on 11/18/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTest: XCTestCase {
    
    var sut: ItemListViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "ItemListViewController")
        
        sut = viewController as? ItemListViewController
        
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_TableView_AfterViewDidLoad_IsNotNil() {
        
        XCTAssertNotNil(sut.tableView)
    }
    
    func test_LoadingView_SetsTableViewDataSource() {
        
        
        XCTAssertTrue(sut.tableView.dataSource is ItemListViewController)
    }
    
    
    func test_LoadingView_SetsTableViewDelegate() {
        
        XCTAssertTrue(sut.tableView.delegate is ItemListViewController)
    }
    
    func test_NumberOfSections_IsTwo() {
        let numberOfSections = sut.tableView.numberOfSections
        XCTAssertEqual(numberOfSections, 2)
    }
    
    func test_NumberOfRows_Section1_IsToDoCount() {
        
        sut.itemManager?.add(ToDoItem(title: "Foo"))
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)

        sut.itemManager?.add(ToDoItem(title: "Bar"))
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 2)
    }
}
