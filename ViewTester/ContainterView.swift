//
//  ContainterView.swift
//  ViewTester
//
//  Created by Alexander v. Below on 15.09.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit

class ContainterView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var subview : UIView? {
        didSet {
            if let exisitingView = oldValue {
                exisitingView.removeFromSuperview()
            }
            if let subview = subview {
            super.addSubview(subview)
            }
        }
    }
    
@available (*, unavailable)
    override func addSubview(_ view: UIView) {
    super.addSubview(view)
    }
    
}
