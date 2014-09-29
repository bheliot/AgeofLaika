//
//  ViewController.swift
//  AgeofLaika
//
//  Created by Belinda Heliot on 9/29/14.
//  Copyright (c) 2014 Belinda Heliot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageConvertedToDogYearsLabel: UILabel!
    @IBOutlet weak var enterAgeInHumanYearsTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeButtonPressed(sender: UIButton) {
        ageConvertedToDogYearsLabel.hidden = false
        enterAgeInHumanYearsTextField.resignFirstResponder()
        
        let ageFromTextField = enterAgeInHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        
        ageConvertedToDogYearsLabel.text =
            "\(ageFromTextField * conversionConstant)" + " in dog years"
    }

}

