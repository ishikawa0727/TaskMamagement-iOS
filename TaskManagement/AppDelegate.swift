//
//  AppDelegate.swift
//  TaskManagement
//
//  Created by 石川雄也 on 2016/07/16.
//  Copyright © 2016年 石川雄也. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var tabBarController: UITabBarController?
    
    var statusBarHeight:CGFloat?
    var navBarHeight :CGFloat?
    var tabBarHeight :CGFloat?
    var availableViewHeight :CGFloat?
    
    static let instance = UIApplication.sharedApplication().delegate as! AppDelegate
    
    func headerHeight() -> CGFloat{
        let height = statusBarHeight! + navBarHeight!
        return height
    }
    
    func barsHeight() -> CGFloat{
        let height = statusBarHeight! + navBarHeight! + tabBarHeight!
        return height
    }
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //タブバーコントローラをアプリケーションの起点とする
        tabBarController = TabBarController()
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }
    
    


}

