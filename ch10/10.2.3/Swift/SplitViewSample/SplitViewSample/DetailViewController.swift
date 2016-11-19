//
//  DetailViewController.swift
//  SplitViewSample
//
//  Created by tonyguan on 2016/11/2.
//  Copyright © 2016年 关东升. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //更新行号
    var selectRow = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("选择的行号： %i", selectRow)
        
        if self.selectRow == 0 {
            //蓝色
            let blueViewController = self.storyboard!.instantiateViewController(withIdentifier: "blueViewController")
            self.addChildViewController(blueViewController)
            self.view.addSubview(blueViewController.view)
        } else {
            //黄色
            let yellowViewController = self.storyboard!.instantiateViewController(withIdentifier: "yellowViewController")
            self.addChildViewController(yellowViewController)
            self.view.addSubview(yellowViewController.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
