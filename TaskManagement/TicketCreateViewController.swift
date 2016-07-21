//
//  TaskCreateViewController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketCreateViewController: UIViewController {
    
    var mainView = TicketCreateView()
    var model = TicketCreateModel()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        super.loadView()
        title = "チケット作成"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(mainView.layout(CGRectMake(0,0,view.width, view.height), navigationBarHeight: (self.navigationController?.navigationBar.frame.size.height)!))
        mainView.createButton.addTarget(self, action: #selector(TicketCreateViewController.createButtonTapped), forControlEvents: .TouchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
        mainView.pickerView.dataSource = model
    }
    
    func createButtonTapped() {
        model.addTicket(content: mainView.contentTextView.text)
        navigationController?.popViewControllerAnimated(true)
    }
}
