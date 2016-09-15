//
//  DisplayView.swift
//  ViewTester
//
//  Created by Alexander v. Below on 15.09.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit

class DisplayView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.gray
    }

    override var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: 50, height: 50)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
