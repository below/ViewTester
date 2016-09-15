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
                let xConstraint = NSLayoutConstraint(item: subview, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0)
                let yConstraint = NSLayoutConstraint(item: subview, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0)
                self.addConstraints([xConstraint, yConstraint])
            }
        }
    }
    
@available (*, unavailable)
    override func addSubview(_ view: UIView) {
    super.addSubview(view)
    }
    
}
