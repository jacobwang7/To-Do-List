//
//  ListTableViewCell.swift
//  ToDo List
//
//  Created by Jacob Wang on 3/4/21.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func checkBoxToggle(sender: ListTableViewCell)

}

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    var toDoItem: ToDoItem! {
        didSet {
            nameLabel.text = toDoItem.name
            checkBoxButton.isSelected = toDoItem.completed
        }
    }
    
    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggle(sender: self)
    }
}
