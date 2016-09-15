//
//  ViewController.swift
//  ViewTester
//
//  Created by Alexander v. Below on 15.09.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: ContainterView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ChoiceChanged(_ sender: UISegmentedControl) {
        var newView : UIView!
        switch sender.selectedSegmentIndex {
        case 0:
            newView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            newView.backgroundColor = UIColor.blue
        case 1:
            let newLabel = UILabel(frame: CGRect.zero)
            newLabel.text = "Hello, World!"
            newLabel.sizeToFit()
            newView = newLabel
        case 2:
            newView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            newView.backgroundColor = UIColor.yellow
        default:
            newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            newView.backgroundColor = UIColor.red
        }
        self.containerView.subview = newView

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

