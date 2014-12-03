//
//  ViewController.swift
//  TestApp
//
//  Created by Gergely Revay on 30/11/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var catYear: UILabel!
    @IBAction func buttenPressed(sender: AnyObject) {
        println(humanYears.text)
        
        var humanYearInt = humanYears.text.toInt()
        
        if ((humanYearInt) != nil) {
        var catYearInt = humanYearInt! * 7
        
        
        catYear.text = String(catYearInt)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

