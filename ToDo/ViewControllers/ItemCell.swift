//
//  ItemCell.swift
//  ToDo
//
//  Created by Lo Howard on 11/18/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter
    }()
    
    //    func configCell(with item: ToDoItem, checked: Bool = false) {
    //
    //        titleLabel.text = item.title
    //
    //        if let timestamp = item.timestamp {
    //            let date = Date(timeIntervalSince1970: timestamp)
    //            dateLabel.text = dateFormatter.string(from: date)
    //        }
    //    }
    
    func configCell(with item: ToDoItem, checked: Bool = false) {
        
        if checked {
            let attributedString = NSAttributedString(
                string: item.title,
                attributes: [NSAttributedString.Key.strikethroughStyle:
                    NSUnderlineStyle.single.rawValue])
            titleLabel.attributedText = attributedString
            locationLabel.text = nil
            dateLabel.text = nil
        } else {
            titleLabel.text = item.title
            locationLabel.text = item.location?.name ?? ""
            
            if let timestamp = item.timestamp {
                let date = Date(timeIntervalSince1970: timestamp)
                dateLabel.text = dateFormatter.string(from: date)
            }
        }
    }
}
