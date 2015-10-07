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
        
        // 添加自控制器
        addChildViewControllers()
        
        // 添加撰写按钮
        setupComposeButton()
        
        print(tabBar.subviews)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // 将撰写按钮移到最前面：延迟加载
        tabBar.bringSubviewToFront(composedBtn)
        
        print(tabBar.subviews)

    }
    
    //MARK: - 设置撰写按钮
    private func setupComposeButton() {
    
        // 1.添加撰写按钮
        tabBar.addSubview(composedBtn)
        
        // 2.设置按钮的位置
        let count = self.childViewControllers.count
        // -1的目的是为了防止用户点击到按钮的边界
        let width = tabBar.bounds.width / CGFloat(count) - 1
        
        composedBtn.frame = CGRectInset(tabBar.bounds, 2 * width, 0)
        
        // 3.添加监听方法
        composedBtn.addTarget(self, action: "composeButtonAction", forControlEvents: .TouchUpInside)
    
    }
    
    // 撰写按钮的监听方法
    func composeButtonAction() {
    
        print("点击了撰写按钮")
    }
    
    //MARK: - 添加所有的控制器
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
        
        // 利用系统方法添加
        addChildViewController(naviVc)
    }
    
    // MARK: - 懒加载撰写按钮
    private lazy var composedBtn: UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")
}











