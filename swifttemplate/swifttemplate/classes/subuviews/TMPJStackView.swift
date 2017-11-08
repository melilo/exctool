//
//  TMPJStackView.swift
//  swifttemplate
//
//  Created by supertext on 2017/11/8.
//  Copyright © 2017年 icegent. All rights reserved.
//

import UIKit

class TMPJStackView: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false;
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    static var `defualt`:TMPJStackView {
        get{
            let stack = TMPJStackView()
            stack.axis = .horizontal
            stack.alignment = .center
            stack.distribution = .equalSpacing
            stack.spacing = 8
            return stack
        }
    }
}
