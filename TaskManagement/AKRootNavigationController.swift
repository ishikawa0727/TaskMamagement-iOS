//
//  AKRootNavigationController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/17.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class AKRootNavigationController: UINavigationController {
    
    init() {
        self.setTabBarController = AKTabBarController()
        let taskListViewController = AKTaskListViewController()
        super.init(rootViewController: taskListViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
