//
//  UIButton + Extention.swift
//  RPSinaWeibo
//
//  Created by 任攀 on 15/9/22.
//  Copyright © 2015年 renpan. All rights reserved.
//

import UIKit

extension UIButton {

    /// 便利构造函数
    convenience init(imageName: String, bgImageName: String){
    
        self.init()
        
        // 设置按钮属性
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        setBackgroundImage(UIImage(named: bgImageName), forState: UIControlState.Normal)
        setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), forState: UIControlState.Highlighted)
    }
}
