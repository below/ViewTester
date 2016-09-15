//
//  ViewController.swift
//  ViewTester
//
//  Created by Alexander v. Below on 15.09.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    
    @IBAction func ChoiceChanged(_ sender: UISegmentedControl) {
        var newView : UIView!
        switch sender.selectedSegmentIndex {
        case 0:
            newView = DisplayView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        case 1:
            let newLabel = UILabel(frame: CGRect.zero)
            newLabel.text = "Hello, World!"
            newView = newLabel
        case 2:
            let newLabel = UILabel(frame: CGRect.zero)
            newLabel.text = "Hello, World!"
            newLabel.font = UIFont.systemFont(ofSize: 32)
            newView = newLabel
        default:
            newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            newView.backgroundColor = UIColor.red
        }
        
        for view in self.stackView.arrangedSubviews {
            view.removeFromSuperview()
        }
        self.stackView.addArrangedSubview(newView)

    }
}

