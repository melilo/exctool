//
//  TMPJMainViewController.swift
//  swifttemplate
//
//  Created by supertext on 15/3/11.
//  Copyright © 2016年 icegent. All rights reserved.
//

import Airmey

class TMPJMainViewController: TMPJTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor=UIColor.white
    }
    override func leftItemAction(_ sender: AnyObject!) {
        TMPJLayoutViewController.shared.showLeftController(animated: true)
    }
}
