//
//  ViewController.swift
//  UIView+corner
//
//  Created by YJM on 2017/7/27.
//  Copyright © 2017年 YJM. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let aView:UIView = UIView(frame: CGRect(x: 20, y: 50, width: 100, height: 100))
        aView.backgroundColor = UIColor.blue
        aView.corner(byRoundingCorners: [UIRectCorner.topLeft, UIRectCorner.bottomRight], cornerRadii: 10)
        self.view.addSubview(aView)
        
        
        let bView:UIView = UIView(frame: CGRect(x: 170, y: 50, width: 100, height: 100))
        bView.backgroundColor = UIColor.red
        bView.cornerAllRound(cornerRadii: 10)
        self.view.addSubview(bView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

