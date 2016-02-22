//
//  AppDelegate.swift
//  Uber
//
//  Created by MoHuilin on 16/2/20.
//  Copyright © 2016年 MoHuilin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        showGuidePage()
        return true
    }
    
    func showGuidePage()
    {
        let guidePage = GuidePage()
        
        window?.rootViewController = guidePage
        window?.makeKeyAndVisible()
        
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

