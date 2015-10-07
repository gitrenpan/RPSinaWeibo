//
//  MainViewController.swift
//  RPSinaWeibo
//
//  Created by 任攀 on 15/9/21.
//  Copyright © 2015年 renpan. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewControllers()
    }
    
    
    /// 添加所有的控制器
    private func addChildViewControllers() {
    
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(UIViewController())
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(MessageViewController(), title: "我", imageName: "tabbar_profile")
        
    }
    
    /// 添加子控制器
    private func addChildViewController(vc:UIViewController, title: String, imageName: String){
    
    tabBar.tintColor = UIColor.orangeColor()
    
    vc.title = title;
    vc.tabBarItem.image = UIImage(named: imageName)
    let naviVc = UINavigationController(rootViewController: vc)
    
    addChildViewController(naviVc)
        
    }
    
    
    
    
    
    
}











