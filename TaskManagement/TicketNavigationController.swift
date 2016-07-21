//
//  TaskNavigationController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketNavigationController: UINavigationController {
    
    override func loadView() {
        super.loadView()
            pushViewController(TicketListViewController(), animated: false)
    }
    
}
