//
//  AppDelegate.swift
//  SMTHBBS
//
//  Created by jiuhao-yangshuo on 16/1/12.
//  Copyright © 2016年 jiuhao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var loginViewController: LoginViewController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
         buildKeyWindow()
        return true
    }
    
    deinit {
        
    }
    
    // MARK: - Public Method
    private func buildKeyWindow() {
        
        window = UIWindow(frame: kScreenBounds)
        window!.makeKeyAndVisible()
        
//        let isFristOpen = NSUserDefaults.standardUserDefaults().objectForKey("isFristOpenApp")
//        
//        if isFristOpen == nil {
        loginViewController = LoginViewController()
        window?.rootViewController = loginViewController
//            NSUserDefaults.standardUserDefaults().setObject("isFristOpenApp", forKey: "isFristOpenApp")
//        } else {
//            loadADRootViewController()
//        }
    }
    
    private func setAppSubject() {
//        let tabBarAppearance = UITabBar.appearance()
//        tabBarAppearance.backgroundColor = UIColor.whiteColor()
//        tabBarAppearance.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        //设置导航栏主题
        let navAppearance = UINavigationBar.appearance()
        // 设置导航titleView字体
        navAppearance.translucent = false
        navAppearance.titleTextAttributes = [NSFontAttributeName : theme.SDNavTitleFont, NSForegroundColorAttributeName : UIColor.blackColor()]
        
        let item = UIBarButtonItem.appearance()
        item.setTitleTextAttributes([NSFontAttributeName : theme.SDNavItemFont, NSForegroundColorAttributeName : UIColor.blackColor()], forState: .Normal)
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

