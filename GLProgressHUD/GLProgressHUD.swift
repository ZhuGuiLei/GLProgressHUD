//
//  GLProgressHUD.swift
//  GLProgressHUD
//
//  Created by apple on 2019/9/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import SVProgressHUD

class GLProgressHUD: NSObject {

    static let delay: TimeInterval = 3
    
    class func initConfig() {
        
        // 前景色
        SVProgressHUD.setDefaultStyle(.dark)
        // 最小尺寸
//        SVProgressHUD.setMinimumSize(CGSize(width: 102, height: 102))
        // 圆角
        SVProgressHUD.setCornerRadius(5)
        // 字体大小
        SVProgressHUD.setFont(UIFont.systemFont(ofSize: 16))
        // 动画类型
        SVProgressHUD.setDefaultAnimationType(.native)
        // 用户是否可以做其他操作
        SVProgressHUD.setDefaultMaskType(.none)
        // 提示图片大小
//        SVProgressHUD.setImageViewSize(CGSize.init(width: 50, height: 50))
//        SVProgressHUD.setSuccessImage(UIImage.init(named: "") ?? UIImage.init())
//        SVProgressHUD.setErrorImage(UIImage.init(named: "") ?? UIImage.init())
//        SVProgressHUD.setInfoImage(UIImage.init(named: "") ?? UIImage.init())
    }
    
    
    /// 修改文字信息
    ///
    /// - Parameter msg: 文字信息
    class func message(_ msg: String?) {
        SVProgressHUD.setStatus(msg)
    }
    
    /// 菊花
    class func showIndicator() {
        SVProgressHUD.show()
    }
    
    /// 菊花+文字
    class func showIndicator(msg: String?) {
        SVProgressHUD.show(withStatus: msg)
    }
    
    class func dismissAll() {
        SVProgressHUD.dismiss()
    }
    
    class func dismissOne() {
        SVProgressHUD.popActivity()
    }
    
    /// 显示进度
    ///
    /// - Parameter progress: 0.0-1.0进度
    class func show(progress: Float) {
        SVProgressHUD.showProgress(progress)
    }
    
    /// 显示进度和文字信息
    ///
    /// - Parameters:
    ///   - progress: 0.0-1.0进度
    ///   - msg: 文字信息
    class func show(progress: Float, msg: String?) {
        SVProgressHUD.showProgress(progress, status: msg)
    }
    
    
    /// 显示文字信息
    ///
    /// - Parameter msg: 文字信息
    class func show(msg: String?) {
        SVProgressHUD.show(UIImage(), status: msg)
        SVProgressHUD.dismiss(withDelay: delay)
    }
    
    /// 显示信息图片和文字信息
    ///
    /// - Parameter msg: 文字信息
    class func showInfo(msg: String?) {
        SVProgressHUD.showInfo(withStatus: msg)
        SVProgressHUD.dismiss(withDelay: delay)
    }
    
    /// 显示成功图片和文字信息
    ///
    /// - Parameter msg: 文字信息
    class func showSuccess(msg: String?) {
        SVProgressHUD.showSuccess(withStatus: msg)
        SVProgressHUD.dismiss(withDelay: delay)
    }
    
    /// 显示错误图片和文字信息
    ///
    /// - Parameter msg: 文字信息
    class func showError(msg: String?) {
        SVProgressHUD.showError(withStatus: msg)
        SVProgressHUD.dismiss(withDelay: delay)
    }
    
    /// 显示图片和文字信息
    ///
    /// - Parameters:
    ///   - img: 图片
    ///   - msg: 文字信息
    class func show(img: UIImage?, msg: String?) {
        if img == nil {
            GLProgressHUD.show(msg: msg)
        } else {
            SVProgressHUD.show(img!, status: msg)
            SVProgressHUD.dismiss(withDelay: delay)
        }
    }
    
}
