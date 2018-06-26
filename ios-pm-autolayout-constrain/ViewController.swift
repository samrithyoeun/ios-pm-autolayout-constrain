//
//  ViewController.swift
//  ios-pm-autolayout-constrain
//
//  Created by Samrith Yoeun on 6/25/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit
import Device

class ViewController: UIViewController {
    
    @IBOutlet weak var blueViewBottomConstrain: NSLayoutConstraint!
    @IBOutlet weak var blueViewTrailingConstrain: NSLayoutConstraint!
    @IBOutlet weak var redViewLeadingConstrain: NSLayoutConstraint!
    @IBOutlet weak var redViewTopConstrain: NSLayoutConstraint!
    @IBOutlet weak var greenViewCenterXConstrain: NSLayoutConstraint!
    @IBOutlet weak var greenViewCenterYConstrain: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch Device.size(){
        case .screen4_7Inch:
            print("we will use the existing constrain")
        default:
            blueViewBottomConstrain.constant = view.frame.size.height/2-50
            redViewLeadingConstrain.constant = view.frame.size.width-100
            greenViewCenterYConstrain.constant = view.frame.height/2-100
            greenViewCenterXConstrain.constant = -view.frame.width/2+100
            
        }
        
    }
}

