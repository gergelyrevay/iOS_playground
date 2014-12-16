//
//  ViewController.swift
//  Persistent Storage
//
//  Created by Gergely Revay on 12/16/14.
//  Copyright (c) 2014 gerionsecurity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NSUserDefaults.standardUserDefaults().setObject("Geri", forKey: "myName")
        
        NSUserDefaults.standardUserDefaults().synchronize()
        
        println(NSUserDefaults.standardUserDefaults().objectForKey("myName"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

