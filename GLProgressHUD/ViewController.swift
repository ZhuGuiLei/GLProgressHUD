//
//  ViewController.swift
//  GLProgressHUD
//
//  Created by apple on 2019/9/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GLProgressHUD.initConfig()
    }

    @IBAction func click(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            GLProgressHUD.dismissAll()
        case 2:
            GLProgressHUD.showIndicator()
        case 3:
            GLProgressHUD.showIndicator(msg: "T##String?")
        case 4:
            GLProgressHUD.show(progress: 0.5)
        case 5:
            GLProgressHUD.show(progress: 0.8, msg: "T##String?")
        case 6:
            GLProgressHUD.show(msg: "T##String?")
        case 7:
            GLProgressHUD.showInfo(msg: "T##String?")
        default:
            GLProgressHUD.dismissOne()
        }
        
    }
    
    

}

