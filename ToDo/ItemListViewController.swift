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
        return itemManager?.toDoCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
