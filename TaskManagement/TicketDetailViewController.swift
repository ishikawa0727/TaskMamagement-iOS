//
//  TicketDetailViewController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketDetailViewController: UIViewController {
    var mainView :TicketDetailView?
    let model = TicketDetailModel()
    var ticketIndex : Int
    

    
    init(index: Int?) {
        self.ticketIndex = index!
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        super.loadView()
        title = "チケット詳細"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        mainView = TicketDetailView.instance()
        AppDelegate.instance.headerHeight()
        mainView!.frame = CGRectMake(0,AppDelegate.instance.headerHeight(),self.view.frame.width, self.view.frame.height - AppDelegate.instance.barsHeight())
        let ticket = model.getTicketAtIndex(ticketIndex)
        mainView?.setContentText(ticket.content)
        view.addSubview(mainView!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
    }

}
