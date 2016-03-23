//
//  MessageTableViewCell.swift
//  ParseStarterProject-Swift
//
//  Created by USER on 11/25/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit


class MessageTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var messageContentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
