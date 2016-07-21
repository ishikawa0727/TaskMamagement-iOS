//
//  Data.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/20.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import Foundation

class Data {
    static var ticketList = Array<Ticket>()
    static var personList = [
        Person(id: 1, name: "honma", imageUrl: "https://xxx.jpg"),
        Person(id: 2, name: "ishikawa", imageUrl: "https://xxx.jpg"),
    ]
}

class MasterData {
    static let ticketPriority = [1: "高", 2: "普通", 3: "低"]
    static let ticketKind = [1: "仕様", 2: "デザイン", 3: "実装", 4: "障害"]
}



