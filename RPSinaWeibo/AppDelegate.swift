//
//  AppDelegate.swift
//  RPSinaWeibo
//
//  Created by 任攀 on 15/9/21.
//  Copyright © 2015年 renpan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        window?.rootViewController = MainViewController()
        window?.backgroundColor = UIColor.brownColor()
        
        window?.makeKeyAndVisible()
    
        return true
    }

   

}

