//
//  TicketListCell.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/20.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketListCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
