//
//  TicketList.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/20.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import Foundation
import UIKit

class TicketListModel : NSObject, UITableViewDataSource{
    
    //セルの個数を指定する
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.ticketList.count
    }
    
    //cellを指定する
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Custom") as! TicketListCell
        let ticket = Data.ticketList[indexPath.row]
        cell.numberLabel?.text = "#" + String(ticket.id)
        cell.contentLabel?.text = ticket.content
        return cell
    }
    
    //セルの削除を可能にする
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    //セルの削除ボタンが押された時の処理
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            Data.ticketList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
        }
    }
    
}