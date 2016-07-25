//
//  ViewController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/16.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketListViewController: UIViewController, TicketListViewDelegate {
    
    let mainView = TicketListView(frame: CGRectMake(0,0,0,0))
    let model = TicketListModel()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        super.loadView()
        calculateHeights()
        title = "チケット一覧"
        mainView.tableView.dataSource = model
        mainView.delegate = self
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
    
    func createButtonTapped(button: UIButton) {
        navigationController?.pushViewController(TicketCreateViewController(), animated: true)
    }
    
    func didSelectRowAtIndex(index: Int) {
        navigationController?.pushViewController(TicketDetailViewController(index: index), animated: true)
    }
    
    func calculateHeights() {
        let ap:AppDelegate = AppDelegate.instance
        ap.statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        ap.navBarHeight = self.navigationController!.navigationBar.frame.size.height
        ap.tabBarHeight = self.tabBarController!.tabBar.frame.size.height
        ap.availableViewHeight = self.view.frame.size.height-ap.statusBarHeight!-ap.navBarHeight!-ap.tabBarHeight!
    }


}

