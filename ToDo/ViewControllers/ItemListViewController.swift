//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Lo Howard on 11/18/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var itemManager: ItemManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ItemListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let itemManager = itemManager else { return 0 }
        guard let itemSection = Section(rawValue: section) else { fatalError() }
        
        let numberOfRows: Int
        
        switch itemSection {
        
        case .toDo:
            numberOfRows = itemManager.toDoCount
        
        case .done:
            numberOfRows = itemManager.doneCount
        }
        
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        guard let itemManager = itemManager, let section = Section(rawValue: indexPath.section) else { fatalError() }
        
        let item: ToDoItem
        
        switch section {
        case .toDo:
            item = itemManager.item(at: indexPath.row)
        case .done:
            item = itemManager.doneItem(at: indexPath.row)
        }
        
        cell.configCell(with: item)
        
//        if let item = itemManager?.item(at: indexPath.row) {
//            cell.configCell(with: item)
//        }
        
        return cell
    }
    
    
}
