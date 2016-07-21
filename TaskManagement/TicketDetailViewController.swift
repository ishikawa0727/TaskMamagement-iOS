//
//  TicketDetailViewController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketDetailViewController: UIViewController {
    let mainView = TicketListView(frame: CGRectMake(0,0,0,0))
    let model = TicketListModel()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        super.loadView()
        title = "チケット詳細"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(mainView.layout(CGRectMake(0,0,view.width, view.height)))
        mainView.createButton.addTarget(self, action: #selector(TicketListViewController.createButtonTapped(_:)), forControlEvents: .TouchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
        mainView.tableView.reloadData()
    }

}
