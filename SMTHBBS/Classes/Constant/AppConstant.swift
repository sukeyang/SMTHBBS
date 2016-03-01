//
//  Theme.swift
//  LoveFreshBee
//
//  Created by 维尼的小熊 on 16/1/12.
//  Copyright © 2016年 tianzhongtao. All rights reserved.
//  GitHub地址:https://github.com/ZhongTaoTian/LoveFreshBeen
//  Blog讲解地址:http://www.jianshu.com/p/879f58fe3542
//  小熊的新浪微博:http://weibo.com/5622363113/profile?topnav=1&wvr=6

import UIKit

// MARK: - 全局常用属性
public let kNavigationH: CGFloat = 64
public let kScreenWidth: CGFloat = UIScreen.mainScreen().bounds.size.width
public let kScreenHeight: CGFloat = UIScreen.mainScreen().bounds.size.height
public let kScreenBounds: CGRect = UIScreen.mainScreen().bounds
public let kStatusBarHeight: CGFloat = 20 
public let kShopCarRedDotAnimationDuration: NSTimeInterval = 0.2
public let kLFBNavigationBarWhiteBackgroundColor = UIColor.colorWithCustom(249, g: 250, b: 253)

// MARK: - Home 属性
public let HotViewMargin: CGFloat = 10
public let HomeCollectionViewCellMargin: CGFloat = 10
public let HomeCollectionTextFont = UIFont.systemFontOfSize(14)
public let HomeCollectionCellAnimationDuration: NSTimeInterval = 1.0

// MARK: - 常用
public let kHeaderImage = "family_head_icon"

// MARK: - Cache路径
public let LFBCachePath: String = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!

struct theme {
    ///  APP导航条barButtonItem文字大小
    static let SDNavItemFont: UIFont = UIFont.systemFontOfSize(16)
    ///  APP导航条titleFont文字大小
    static let SDNavTitleFont: UIFont = UIFont.systemFontOfSize(18)
    /// ViewController的背景颜色
    static let SDBackgroundColor: UIColor = UIColor.colorWith(255, green: 255, blue: 255, alpha: 1)
    /// webView的背景颜色
    static let SDWebViewBacagroundColor: UIColor = UIColor.colorWith(245, green: 245, blue: 245, alpha: 1)
    /// 友盟分享的APP key
    static let UMSharedAPPKey: String = "55e2f45b67e58ed4460012db"
    /// 自定义分享view的高度
    static let ShareViewHeight: CGFloat = 215
    static let GitHubURL: String = "https://github.com/ZhongTaoTian"
    static let JianShuURL: String = "http://www.jianshu.com/users/5fe7513c7a57/latest_articles"
    /// cache文件路径
    static let cachesPath: String = NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true).last!
    /// UIApplication.sharedApplication()
    static let appShare = UIApplication.sharedApplication()
    static let sinaURL = "http://weibo.com/u/5622363113/home?topnav=1&wvr=6"
    /// 高德地图KEY
    static let GaoDeAPPKey = "2e6b9f0a88b4a79366a13ce1ee9688b8"
}
// MARK: - 常用颜色
public let LFBGlobalBackgroundColor = UIColor.colorWithCustom(239, g: 239, b: 239)
public let LFBNavigationYellowColor = UIColor.colorWithCustom(253, g: 212, b: 49)
public let LFBTextGreyColol = UIColor.colorWithCustom(130, g: 130, b: 130)
public let LFBTextBlackColor = UIColor.colorWithCustom(50, g: 50, b: 50)

public let COLOR_FF5351 = "#ff5232"//红色
public let LINE_COLOR = "#ebebeb"
public let COLOR_333333 = "#333333"
public let COLOR_666666 = "#666666"
public let COLOR_999999 = "#999999"

public let VERSION_LIN_COLOR_SHEN = "cccccc"
public let VERSION_LIN_COLOR_QIAN = "#ebebeb"
public let VERSION_BACKGROUD_COLOR2 = "f2f2f2"

