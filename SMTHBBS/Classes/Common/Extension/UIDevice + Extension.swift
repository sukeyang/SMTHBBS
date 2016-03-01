//
//  UIDevice + Extension.swift
//  LoveFreshBeen
//
//  Created by 维尼的小熊 on 16/1/12.
//  Copyright © 2016年 tianzhongtao. All rights reserved.
//  GitHub地址:https://github.com/ZhongTaoTian/LoveFreshBeen
//  Blog讲解地址:http://www.jianshu.com/p/879f58fe3542
//  小熊的新浪微博:http://weibo.com/5622363113/profile?topnav=1&wvr=6

import UIKit

extension UIDevice {
        
    class func currentDeviceScreenMeasurement() -> CGFloat {
        var deviceScree: CGFloat = 3.5
        
        if ((568 == kScreenHeight && 320 == kScreenWidth) || (1136 == kScreenHeight && 640 == kScreenWidth)) {
            deviceScree = 4.0;
        } else if ((667 == kScreenHeight && 375 == kScreenWidth) || (1334 == kScreenHeight && 750 == kScreenWidth)) {
            deviceScree = 4.7;
        } else if ((736 == kScreenHeight && 414 == kScreenWidth) || (2208 == kScreenHeight && 1242 == kScreenWidth)) {
            deviceScree = 5.5;
        }
        
        return deviceScree
    }
}