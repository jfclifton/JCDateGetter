//
//  ViewController.swift
//  JCDateGetter
//
//  Created by JFClifton on 6/3/14.
//  Copyright (c) 2014 Jordan Clifton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var threeDaysAgo = 3.days(timeSpecifier.timeAgo)
        
        var threeDaysAhead = 3.days(timeSpecifier.timeAhead)
        
        println("Three days ago: \(threeDaysAgo) \nThree days ahead: \(threeDaysAhead)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

