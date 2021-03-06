//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by John Bruno on 2015-04-13.
//  Copyright (c) 2015 John Bruno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertHumanToDogPressed(sender: UIButton) {
        var humanYears = humanYearsTextField.text.toInt()!
        
        //dogYearsLabel.text = "Dog Years: \(humanYears * 7)"
        if humanYears == 0 {
            dogYearsLabel.text = "Dog Years:"
        }
        else if humanYears < 3 {
            dogYearsLabel.text = "Dog Years: \(Double(humanYears) * 10.5)"
        }
        else {
            dogYearsLabel.text = "Dog Years: \((humanYears - 2) * 4 + 21)"
        }
        
        humanYearsTextField.resignFirstResponder()
    }

}