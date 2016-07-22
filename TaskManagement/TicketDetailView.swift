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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
