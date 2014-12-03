//
//  ViewController.swift
//  Prime
//
//  Created by Gergely Revay on 03/12/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var ans: UILabel!
    @IBAction func checkButt(sender: AnyObject) {
        var num = number.text.toInt()
        if (num != nil){
            if (num < 1){
            ans.text = "Sorry input is invalid"
            }else {
                if (num == 1){
                    ans.text = "Hmm, depends on your religioun."
                } else {
                    //calc sqrt of number
                    var sqrt_num = sqrt(Float(num!))
                    //check every number until sqer wether have remainder or not
                    for var i = 2; i <= Int(sqrt_num); i++ {
                        var mod = num! % i
                        if mod == 0 {
                            ans.text = "No, \(number.text) is not a prime."
                            return
                        }
                    }
                    ans.text = "Yes, \(number.text) is a prime."

                }
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

