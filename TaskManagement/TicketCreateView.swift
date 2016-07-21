//
//  TicketCreateView.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/20.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

class TicketCreateView: UIView {
    
    let selectKindButton = UIButton()
    let selectPriorityButton = UIButton()
    let selectWorkerButton = UIButton()
    let selectDeadlineButton = UIButton()
    
    let pickerView = UIPickerView()
    let deadlinePickerView = UIDatePicker()
    
    let contentTextView = UITextView()
    
    let createButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(frame: CGRect, navigationBarHeight: CGFloat) -> TicketCreateView {
        
        self.frame = frame
        backgroundColor = UIColor.greenColor()
        
        let app = AppDelegate.instance
        let headerHeight = app.statusBarHeight! + app.navBarHeight!
        let selectbuttonSize = CGSizeMake(width / 4, width / 4)
        let createButtonSize = CGSizeMake(width, 70)
        
        selectKindButton.frame = CGRectMake(0, headerHeight, selectbuttonSize.width, selectbuttonSize.height)
        selectKindButton.setTitle("種別", forState: .Normal)
        selectKindButton.backgroundColor = UIColor.redColor()
        self.addSubview(selectKindButton)
        
        selectPriorityButton.frame = CGRectMake(selectKindButton.right, headerHeight, selectbuttonSize.width, selectbuttonSize.height)
        selectPriorityButton.setTitle("優先度", forState: .Normal)
        selectPriorityButton.backgroundColor = UIColor.blueColor()
        self.addSubview(selectPriorityButton)
        
        selectWorkerButton.frame = CGRectMake(selectPriorityButton.right, headerHeight, selectbuttonSize.width, selectbuttonSize.height)
        selectWorkerButton.setTitle("担当者", forState: .Normal)
        selectWorkerButton.backgroundColor = UIColor.purpleColor()
        self.addSubview(selectWorkerButton)
        
        selectDeadlineButton.frame = CGRectMake(selectWorkerButton.right, headerHeight, selectbuttonSize.width, selectbuttonSize.height)
        selectDeadlineButton.setTitle("期限", forState: .Normal)
        selectDeadlineButton.backgroundColor = UIColor.brownColor()
        self.addSubview(selectDeadlineButton)
        
        contentTextView.frame = CGRectMake(0, selectDeadlineButton.bottom, width, height - selectDeadlineButton.bottom - app.tabBarHeight! - createButtonSize.height);
        contentTextView.addAccessoryView(text: "close", sender: self, action: #selector(TicketCreateView.contentTextViewCompleteButtonTapped))
        self.addSubview(contentTextView)
        
        createButton.frame = CGRectMake(0, contentTextView.bottom, createButtonSize.width, createButtonSize.height)
        createButton.setTitle("create", forState: .Normal)
        createButton.backgroundColor = UIColor.blackColor()
        
        self.addSubview(createButton)
        
        return self
    }
    
    func contentTextViewCompleteButtonTapped() {
        contentTextView.resignFirstResponder()
    }
    
}
