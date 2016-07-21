//
//  AKTabBarController.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/17.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var ticketNavigationController : TicketNavigationController!
    var chatNavigationController : ChatNavigationController!
    var calenderNavigationController : UINavigationController!
    var othersNavigationController : UINavigationController!
    
    
    override func loadView() {
        super.loadView()
        ticketNavigationController = TicketNavigationController()
        chatNavigationController = ChatNavigationController()
        calenderNavigationController = UINavigationController()
        othersNavigationController = UINavigationController()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        ticketNavigationController.tabBarItem.image = UIImage(named: "tab_ticket.png")
        ticketNavigationController.tabBarItem.title = "チケット"
        
        chatNavigationController.tabBarItem.image = UIImage(named: "tab_chat.png")
        chatNavigationController.tabBarItem.title = "チャット"
        
        calenderNavigationController.tabBarItem.image = UIImage(named: "tab_calendar.png")
        calenderNavigationController.tabBarItem.title = "カレンダー"
        
        othersNavigationController.tabBarItem.image = UIImage(named: "tab_others.png")
        othersNavigationController.tabBarItem.title = "その他"
        
        let viewControllers = [ticketNavigationController, chatNavigationController, calenderNavigationController, othersNavigationController]
        setViewControllers(viewControllers, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    
}
