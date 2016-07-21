//
//  TicketCreateModel.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/21.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import Foundation
import UIKit

class TicketCreateModel: NSObject, UIPickerViewDataSource {
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    func addTicket(content content:String) {
        Data.ticketList.count
        let ticket = Ticket(id: Data.ticketList.count, editorId: 1, kindId: 1, priorityId: 1, workerId: 1, limitDate: NSDate(), content: content);
        Data.ticketList.append(ticket)
    }
    
}