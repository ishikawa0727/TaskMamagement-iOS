//
//  TIcket.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import Foundation

struct Ticket {
    let id:Int
    let editorId: Int
    var kindId: Int
    var priorityId: Int
    var workerId: Int
    var limitDate: NSDate
    var content: String
}

