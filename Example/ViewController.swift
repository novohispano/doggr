//
//  ViewController.swift
//  Example
//
//  Created by Jorge Téllez on 10/30/14.
//  Copyright (c) 2014 Black Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dogFactor: Int  = 7
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var dogInput: UITextField!
    @IBAction func dogInputSelected(sender: AnyObject) {
        dogInput.text = ""
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        calculateDogYears()
    }
    
    func calculateDogYears () {
        let dogYears:        Int? = dogInput.text.toInt()
        let dogYearsToHuman: Int? = dogFactor * dogYears!
        
        myLabel.text  = "Your dog is \(dogYearsToHuman!) human years old."
        dogInput.text = "Enter your dog's age.."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

