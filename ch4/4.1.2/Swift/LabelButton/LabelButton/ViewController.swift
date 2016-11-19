//
//  ViewController.swift
//  LabelButton
//
//  Created by tonyguan on 2016/10/20.
//  Copyright © 2016年 关东升. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screen = UIScreen.main.bounds
        
        let labelWidth:CGFloat = 90
        let labelHeight:CGFloat = 20
        let labelTopView:CGFloat = 150
        let labelFrame = CGRect(x: (screen.size.width - labelWidth)/2 ,
                           y: labelTopView, width: labelWidth, height: labelHeight)
        
        let label = UILabel(frame: labelFrame)
        
        label.text = "Label"
        //字体左右居中
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        
        let button = UIButton(type: UIButtonType.system)
        button.setTitle("OK", for: UIControlState.normal)
        
        let buttonWidth:CGFloat = 60
        let buttonHeight:CGFloat = 20
        let buttonTopView:CGFloat = 240
        
        button.frame = CGRect(x: (screen.size.width - buttonWidth)/2 ,
                              y: buttonTopView, width: buttonWidth, height: buttonHeight)

        
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
