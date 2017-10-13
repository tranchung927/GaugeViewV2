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
    var isReturn: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gaugeView.percentage = Float(value)
        gaugeView.labelText = "\(value)%"
    }
    @IBAction func update(_ sender: Any) {
        isReturn = !isReturn
        if isReturn {
            for i in 0...100 {
                value = i
                gaugeView.percentage = Float(value)
                gaugeView.labelText = "\(value)%"
            }
        } else {
            value = 0
            gaugeView.percentage = Float(value)
            gaugeView.labelText = "\(value)%"
        }
        //        if valueDisplay < 100 {
        //            valueDisplay += 10
        //        }
        //        else if valueDisplay == 100 {
        //            valueDisplay = 10
        //        }
        //        value += 10
        //        gaugeView.percentage = Float(value)
        //        gaugeView.labelText = "\(valueDisplay)%"
        //        print(value)
    }
}

