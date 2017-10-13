//
//  ViewController.swift
//  GaugeViewV2
//
//  Created by ChungTran on 10/13/17.
//  Copyright © 2017 ChungTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gaugeView: GaugeView!
    
    var value = 0
    var valueDisplay = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gaugeView.percentage = Float(value)
        gaugeView.labelText = "\(valueDisplay)%"
    }
    @IBAction func update(_ sender: Any) {
        if valueDisplay < 100 {
            valueDisplay += 10
        }
        else if valueDisplay == 100 {
            valueDisplay = 10
        }
        value += 10
        gaugeView.percentage = Float(value)
        gaugeView.labelText = "\(valueDisplay)%"
        print(value)
    }
}

