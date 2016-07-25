//
//  TicketDetailView.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/22.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketDetailView: UIView {

    
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var workerLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var deadlineLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    class func instance() -> TicketDetailView {
        return UINib(nibName: "TicketDetailView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! TicketDetailView
    }
    
    func setContentText(text: String) {
        contentLabel.text = text
    }
}
