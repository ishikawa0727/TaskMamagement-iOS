//
//  TicketListTableView.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/18.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

protocol TicketListViewDelegate {
     func didSelectRowAtIndex(index: Int)
}


class TicketListView: UIView, UITableViewDelegate {
     
     let tableView = UITableView()
     var scrollBeginingPoint: CGPoint!
     let createButton = UIButton()
     var delegate: TicketListViewDelegate!
     
     override init(frame: CGRect) {
          super.init(frame: frame)
          tableView.registerNib(UINib(nibName: "TicketListCell", bundle: nil), forCellReuseIdentifier: "Custom")
          tableView.delegate = self
     }
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
     
     func layout(frame: CGRect) -> TicketListView{
          self.frame = frame
          tableView.frame = CGRectMake(0, 0, width, height)
          self.addSubview(tableView)
          createButton.setSize(CGSizeMake(50, 50))
          createButton.setOrigin(CGPointMake(width - createButton.width * 1.3, height - createButton.height * 2.2))
          createButton.backgroundColor = UIColor.redColor()
          createButton.layer.cornerRadius = 25
          createButton.titleLabel!.textColor = UIColor.whiteColor()
          createButton.setTitle("+", forState: UIControlState.Normal)
          createButton.titleLabel!.font = UIFont.systemFontOfSize(30)
          self.addSubview(createButton)
          return self;
     }
     
     func scrollViewWillBeginDragging(scrollView: UIScrollView) {
          scrollBeginingPoint = scrollView.contentOffset;
     }
     
     func scrollViewDidScroll(scrollView: UIScrollView) {
          if scrollBeginingPoint == nil {
               return
          }
          let currentPoint = scrollView.contentOffset
          if currentPoint.y < scrollBeginingPoint.y {
               UIView.animateWithDuration(0.5, animations: {
                    self.createButton.alpha = 1
                    self.createButton.setY(self.height - self.createButton.height * 2.2)
               })
          } else if scrollBeginingPoint.y < currentPoint.y {
               UIView.animateWithDuration(0.5, animations: {
                    self.createButton.alpha = 0
                    self.createButton.setY(self.height)
               })
          }
          scrollBeginingPoint = nil
     }
     
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
          delegate.didSelectRowAtIndex(indexPath.row)
     }
}
