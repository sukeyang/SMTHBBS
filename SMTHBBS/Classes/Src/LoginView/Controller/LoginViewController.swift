//
//  LoginViewController.swift
//  SMTHBBS
//
//  Created by jiuhao-yangshuo on 16/2/26.
//  Copyright © 2016年 jiuhao. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.None)
        addContentView()
    }
    
    func addContentView()
    {
        view.backgroundColor = UIColor(patternImage: UIImage(named:"loadingBackImage")!)
        let topImageView = UIImageView(image:  UIImage(named: kHeaderImage))
        view.addSubview(topImageView)
        topImageView.snp_makeConstraints { make in
            make.top.equalTo(view).offset(40.0)
            make.width.equalTo(85.0)
            make.centerX.equalTo(view);
        }
        
        let userNameImageView = UIImageView()
        userNameImageView.layer.borderColor = UIColor.hexStringToColor (LINE_COLOR).CGColor
        userNameImageView.layer.borderWidth = 0.5
        userNameImageView.backgroundColor = UIColor.hexStringToColor("ffffff")
        userNameImageView.userInteractionEnabled = true
        view.addSubview(userNameImageView)
        userNameImageView.snp_makeConstraints { make in
            make.top.equalTo(topImageView.snp_bottom).offset(35.0)
            make.size.equalTo(CGSize(width: kScreenWidth, height: 110))
        }
   
        let userImageView = UIImageView()
        userImageView.userInteractionEnabled = true
        userImageView.image = UIImage(named:"login_icon_user")
        userNameImageView.addSubview(userImageView)
        userImageView.contentMode = .Center
        userImageView.snp_makeConstraints { make in
            make.top.left.equalTo(0)
            make.size.equalTo(CGSize(width: 50, height: 55))
        }
        
        let userNameTextField = UITextField()
        userNameTextField.keyboardType = UIKeyboardType.Default
        addTextFieldToTopViewWiht(userNameTextField,superView:view, placeholder: "请输入帐号")
        userNameImageView.addSubview(userNameTextField)
        userNameTextField.snp_makeConstraints { make in
            make.size.equalTo(CGSize(width: kScreenWidth-80, height: 55))
            make.top.equalTo(0)
            make.left.equalTo(userNameImageView.snp_left).offset(70.0)
        }
    
        let passTextField = UITextField()
        passTextField.keyboardType = UIKeyboardType.Default
        addTextFieldToTopViewWiht(passTextField,superView:view, placeholder: "密码")
        userNameImageView.addSubview(passTextField)
        passTextField.snp_makeConstraints { make in
            make.top.equalTo(userNameTextField.snp_bottom).offset(0)
            make.size.equalTo(CGSize(width: kScreenWidth-80, height: 55))
            make.left.equalTo(userNameTextField.snp_left)
        }
        
        let passImageView = UIImageView()
        passImageView.userInteractionEnabled = true
        passImageView.image = UIImage(named:"login_icon_password")
        passImageView.contentMode = .Center
        userNameImageView.addSubview(passImageView)
        passImageView.snp_makeConstraints { make in
             make.top.equalTo(userNameTextField.snp_bottom).offset(0)
             make.size.equalTo(CGSize(width: 50, height: 55))
        }
        
        let line2 = UIView()
        line2.backgroundColor = UIColor.hexStringToColor (LINE_COLOR)
        userNameImageView.addSubview(line2)
        line2.snp_makeConstraints { make in
            make.height.equalTo(0.5)
            make.top.equalTo(userNameTextField.snp_bottom)
            make.left.right.equalTo(0)
        }
        
        let quickLoginBtn = UIButton()
        view.addSubview(quickLoginBtn)
        quickLoginBtn.layer.cornerRadius = 4.0
        quickLoginBtn.clipsToBounds = true
        let normalImage = UIImage.createImageWithColor(UIColor.hexStringToColor(COLOR_FF5351))
        quickLoginBtn.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        quickLoginBtn.setTitle("登录", forState: .Normal)
        let textCoclor = UIColor.hexStringToColor("ffffff")
        quickLoginBtn.setTitleColor(textCoclor, forState: .Normal)
        quickLoginBtn.setTitleColor(UIColor.lightGrayColor(), forState: .Highlighted)
        quickLoginBtn.titleLabel?.font = UIFont.systemFontOfSize(18)
        quickLoginBtn.addTarget(self, action: "quickLoginClick:", forControlEvents: .TouchUpInside)
        quickLoginBtn.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.height.equalTo(44.0)
            make.top.equalTo(userNameImageView.snp_bottom).offset(15)
        }
    }
    
    func quickLoginClick(btn :UIButton)
    {
        print("\(btn)");
    }
    
    func addTextFieldToTopViewWiht(textField: UITextField ,superView: UIView, placeholder: String) {
        textField.autocorrectionType = .No
        textField.clearButtonMode = .Always
        textField.backgroundColor = UIColor.whiteColor()
        textField.placeholder = placeholder
        superView.addSubview(textField)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
