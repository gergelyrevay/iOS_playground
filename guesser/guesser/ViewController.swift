//
//  ViewController.swift
//  guesser
//
//  Created by Gergely Revay on 30/11/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func checkButton(sender: AnyObject) {
        var guess = inputField.text.toInt()
        
        if (guess != nil && guess >= 0 && guess <= 10) {
            var randomNumber = Int(arc4random() % 11)
            resultLabel.text = String(randomNumber)
            
            if randomNumber == guess {
                resultLabel.textColor = UIColor.greenColor()
            } else {
                resultLabel.textColor = UIColor.redColor()
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

